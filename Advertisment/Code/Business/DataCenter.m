//
//  DataßCenter.m
//  Advertisment
//
//  Created by bb on 13-3-23.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter
@synthesize user;
@synthesize itemList;
@synthesize activityList;



-(void) loadUserInfoAsyn:(NSString*)token
{
    
}

-(void) loadItemAsyn
{
    
}

-(void) loadActivityAsyn
{
    
}

// Synchronous loda information form server
-(void) loadUserInfoSyn:(NSString*)token
{
    NSURL *url = [NSURL URLWithString:token];
    ASIHTTPRequest *ret = [ASIHTTPRequest requestWithURL:url];
    [ret startAsynchronous];
}

-(void) loadItemSyn
{
    
}

-(void) loadActivitySyn
{
    
}

- (void)requestStarted:(ASIHTTPRequest *)request
{
    
}

#pragma mark --ß
- (void)request:(ASIHTTPRequest *)request didReceiveResponseHeaders:(NSDictionary *)responseHeaders
{
    
}

- (void)request:(ASIHTTPRequest *)request willRedirectToURL:(NSURL *)newURL
{
    
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
    
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    
}

- (void)requestRedirected:(ASIHTTPRequest *)request
{
    
}

// When a delegate implements this method, it is expected to process all incoming data itself
// This means that responseData / responseString / downloadDestinationPath etc are ignored
// You can have the request call a different method by setting didReceiveDataSelector
- (void)request:(ASIHTTPRequest *)request didReceiveData:(NSData *)data
{
    
}

@end
