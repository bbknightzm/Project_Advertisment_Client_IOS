//
//  AdvertisementScrollView.h
//  Advertisment
//
//  Created by bb on 2/17/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdvertisementScrollView : UIView <UIScrollViewDelegate>
{
    UIScrollView *scrollView;

    UIPageControl *pageControl;
}

//@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
//@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;

//- (IBAction)changePage:(id)sender;
@end
