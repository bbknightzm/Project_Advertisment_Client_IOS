//
//  ObjectParser.h
//  Advertisment
//
//  Created by bb on 13-3-16.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjectParser : NSObject

+(id)initWithDictonary:(id)object :(NSDictionary *)dict;

+(void)reflection:(id)object;

@end
