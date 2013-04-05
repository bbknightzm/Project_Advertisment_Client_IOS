//
//  ObjectParser.m
//  Advertisment
//
//  Created by bb on 13-3-16.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "ObjectParser.h"
#import <objc/runtime.h>

//#import "StringHelper.h"

@implementation ObjectParser
//abstract方法，子类如果有属性需要自己序列化，则返回YES即可  object==>json
-(BOOL)handlePropertyForJson:(NSString *)property dictionary:(NSDictionary *)dict{
    return NO;
}

- (id)proxyForJson
{
    NSMutableDictionary * dict = [[NSMutableDictionary  alloc]init];
    //[dict setValue:<#(id)#> forKey:<#(NSString *)#>]
    
    Class clazz = [self class];
    u_int count;
    
    objc_property_t* properties = class_copyPropertyList(clazz, &count);
    
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        const char* propertyAttribute = property_getAttributes(properties[i]);
        
        NSString *name=[NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        if ([self handlePropertyForJson:name dictionary:dict])
        {
            continue;
        }
        NSString *attribute=[NSString  stringWithCString:propertyAttribute encoding:NSUTF8StringEncoding];
        
        NSString *getterName =  [[NSString  alloc] initWithFormat:@"%@",name];
        SEL selector= NSSelectorFromString(getterName);
        if (selector)
        {
            //等于null，或者字符串“” 都不会赋值
            id value = [self performSelector:selector];
/*            if (value!=[NSNull null])
            {
                if ([StringHelper lastIndexOf:attribute  searchString:@"\"NSString\""]&&
                    [StringHelper isEmpty:(NSString*)value])
                {
                    continue;
                }
                [dict setValue:value forKey:name];
            }*/
            
        }
        
    }
    //free(properties);
    return  dict;
}



-(BOOL)handleProperty:(NSString *)property dictionary:(NSDictionary *)dict{
    return NO;
}

+(id)initWithDictonary:(id)object :(NSDictionary *)dict;
{
//+(id)initWithDictonary:(NSDictionary *)dict{
    //self = [self init];
    
    Class clazz = [object class];
    u_int count;
    
    objc_property_t* properties = class_copyPropertyList(clazz, &count);
    
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        const char* propertyAttribute = property_getAttributes(properties[i]);
        
        NSString *name=[NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding];
//        if ([self handleProperty:name dictionary:dict]) {
//            continue;
//        }
        
        NSString *attribute=[NSString  stringWithCString:propertyAttribute encoding:NSUTF8StringEncoding];
        // NSLog(@"\n%@==%@",name,attribute);
/*        NSString *setterName = [[NSString  alloc] initWithFormat:@"set%@:",[StringHelper firstCharToUpcase:name]];
        SEL selector= NSSelectorFromString(setterName);
        if (selector)
        {
            id value = [NSNull null];
            if ([StringHelper lastIndexOf:attribute  searchString:@"\"NSString\""]){
                value = [self nvlStr:dict name:name];
            }else if ([StringHelper lastIndexOf:attribute  searchString:@"\"NSNumber\""]){
                value = [self nvlNumber:dict name:name];
            } else if ([StringHelper lastIndexOf:attribute  searchString:@"\"NSDate\""]){
                value = [self nvlDate:dict name:name];
            }
            
            if (value!= [NSNull null]) {
                [self performSelector:selector  withObject:value];
                // NSLog(@"%@.%@%@",self.class,setterName,value);
            }
        }*/
        
    }
    //free(properties);
    
    return  self;
}


-(void)dealloc{
    //自动释放属性变量
    Class clazz = [self class];
    u_int count;
    
    objc_property_t* properties = class_copyPropertyList(clazz, &count);
    
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        // const char* propertyAttribute = property_getAttributes(properties);
        
        NSString *name=[NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        //NSString *attribute=[NSString  stringWithCString:propertyAttribute encoding:NSUTF8StringEncoding];
        // NSLog(@"\n%@==%@",name,attribute);
        
        SEL selector= NSSelectorFromString(name);
        if (selector){
            id variable= [self performSelector:selector  withObject:nil];
            
            //if (variable!=[NSNull null]&&variable) {
            //  NSLog(@"\n%@.%@==%@ released!",self.class,name,variable);
            //[variable release];
            
            //}
            
        }
        
    }
    //free(properties);
    
    
}


+(void)reflection:(id)object
{
    Class clazz = [object class];
    u_int count;
    
    Ivar* ivars = class_copyIvarList(clazz, &count);
    NSMutableArray* ivarArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i < count ; i++)
    {
        const char* ivarName = ivar_getName(ivars[i]);
        [ivarArray addObject:[NSString  stringWithCString:ivarName encoding:NSUTF8StringEncoding]];
    }
    free(ivars);
    
    objc_property_t* properties = class_copyPropertyList(clazz, &count);
    NSMutableArray* propertyArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i < count ; i++)
    {
        const char* propertyName = property_getName(properties[i]);
        [propertyArray addObject:[NSString  stringWithCString:propertyName encoding:NSUTF8StringEncoding]];
    }
    free(properties);
    
    Method* methods = class_copyMethodList(clazz, &count);
    NSMutableArray* methodArray = [NSMutableArray arrayWithCapacity:count];
    for (int i = 0; i < count ; i++)
    {
        SEL selector = method_getName(methods[i]);
        
        const char* methodName = sel_getName(selector);
        [methodArray addObject:[NSString  stringWithCString:methodName encoding:NSUTF8StringEncoding]];
    }
    free(methods);
    
    NSDictionary* classDump = [NSDictionary dictionaryWithObjectsAndKeys:
                               ivarArray, @"ivars",
                               propertyArray, @"properties",
                               methodArray, @"methods",
                               nil];
    
    NSLog(@"%@", classDump);
    
    //根据类名创建类
    //方法1
    id obj = [[NSClassFromString(@"Item") alloc] init];
    
    
    
    NSLog(@"\nclass=%@",obj);
    //[object release];
    
    //方法2
    id c = objc_getClass("Item");
    id oo= [ [ c alloc ] init ];
    NSLog(@"oo=%@",oo);
    //[oo release];
}

-(NSDate *)nvlDate:(NSDictionary *)dict name:(NSString *)name{
    //static NSString *nullStr=@"";
    
    id result =  [dict objectForKey:name];
    if (result== [NSNull null]) {
        return result;
    }else{
        return result;
    }
}

-(NSNumber *)nvlNumber:(NSDictionary *)dict name:(NSString *)name{
    //static NSString *nullStr=@"";
    
    id result =  [dict objectForKey:name];
    if (result== [NSNull null]) {
        return result;
    }else{
        return result;
    }
}

-(NSString *)nvlStr:(NSDictionary *)dict name:(NSString *)name{
    //static NSString *nullStr=@"";
    
    id result =  [dict objectForKey:name];
    if (result== [NSNull null]) {
        return result;
    }else{
        return [[NSString alloc] initWithFormat:@"%@",result];
    }
}



@end
