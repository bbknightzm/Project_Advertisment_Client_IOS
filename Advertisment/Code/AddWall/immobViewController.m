//
//  immobViewController.m
//  Advertisment
//
//  Created by bb on 2/5/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "immobViewController.h"
//#import <immobSDK/immobView.h>

@interface immobViewController ()

@end

@implementation immobViewController
/*
@synthesize adView_AdWall = _adView_AdWall;
*/
//@synthesize adwallview;// = _adwallview;
/*
- (id)initWithType : (enum ENUM_WALL_CO)wallType
{
    self = [super init];
    if (self) {
        // Custom initialization
        switch (wallType) {
            case ENUM_IMMOB:
                self.adView_AdWall = [[immobView alloc] initWithAdUnitID:@"d2b0c4296dc009ddc00d10da9c4cf83e"];
//                ((immobView*)self.adView_AdWall).delegate = self;

                break;
                
            default:
                break;
        }
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
/*
- (UIViewController *)immobViewController{
    
    return self;
}*/

- (void)viewDidLoad
{
    [self initWithAdUnitID:@"d2b0c4296dc009ddc00d10da9c4cf83e"];
    self.delegate = self;
    [self immobViewRequest];
//    [super viewDidLoad];
	// Do any additional setup after loading the view.
//    adwallview=[[immobView alloc] initWithAdUnitID:@"d2b0c4296dc009ddc00d10da9c4cf83e"];
//    adwallview.delegate=self;
//    if (adwallview) {
//        [adwallview immobViewRequest];
//        [self.view addSubview:adwallview];
//        [adwallview immobViewDisplay];
//    }
}

- (void)viewDidUnload
{
//    [self setAdwallb:nil];
    [self viewDidUnload];
    // Release any retained subviews of the main view.
    
}


- (void)didReceiveMemoryWarning
{
    [self didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) immobViewDidReceiveAd
{
    [self immobViewDisplay];
//    [adwallview immobViewDisplay];
    NSLog(@"immobView did received");
}

@end
