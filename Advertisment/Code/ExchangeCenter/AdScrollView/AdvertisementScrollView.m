//
//  AdvertisementScrollView.m
//  Advertisment
//
//  Created by bb on 2/17/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

#import "AdvertisementScrollView.h"

@interface AdvertisementScrollView ()// (PrivateMethods)
//- (void)loadScrollViewWithPage:(int)page;
//- (void)scrollViewDidScroll:(UIScrollView *)sender;
@end

@implementation AdvertisementScrollView

//@synthesize scrollView;
//@synthesize pageControl;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        scrollView = [[UIScrollView alloc] initWithFrame:frame];
        if (scrollView != nil)
        {
            [self createPages];
            scrollView.pagingEnabled = YES;
            scrollView.showsHorizontalScrollIndicator = NO;
            scrollView.showsVerticalScrollIndicator = NO;
            scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [[scrollView subviews] count], scrollView.frame.size.height);
            scrollView.scrollsToTop = NO;
            scrollView.delegate = self;
        }
        CGRect pageViewRect = [self bounds];
        pageViewRect.size.height = 18;
        pageViewRect.size.width = 80;
        pageViewRect.origin.y = scrollView.bounds.size.height - pageViewRect.size.height;
        pageViewRect.origin.x = scrollView.bounds.size.width - pageViewRect.size.width;
        pageControl = [[UIPageControl alloc] initWithFrame:pageViewRect];
        if (pageControl != nil)
        {
            pageControl.numberOfPages = [[scrollView subviews] count];
            pageControl.currentPage = 0;
        //    pageControl.backgroundColor = [UIColor redColor];
            pageControl.currentPageIndicatorTintColor = [UIColor redColor];
            pageControl.pageIndicatorTintColor = [UIColor grayColor];
        }
        [self addSubview:scrollView];
        [self addSubview:pageControl];
    }
    return self;
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
}

- (void)createPages
{
    CGRect pageRect = scrollView.frame;
    
    //create pages
    UIImageView *page1 = [[UIImageView alloc] initWithFrame:pageRect];
    page1.image = [UIImage imageNamed:@"Adtest"];
    UIImageView *page2 = [[UIImageView alloc] initWithFrame:pageRect];
    page2.image = [UIImage imageNamed:@"Adtest"];
    UIImageView *page3 = [[UIImageView alloc] initWithFrame:pageRect];
    page3.image = [UIImage imageNamed:@"Adtest"];
    
    //add to scrollview
    [self loadScrollViewWithPage:page1];
    [self loadScrollViewWithPage:page2];
    [self loadScrollViewWithPage:page3];
//    [self loadScrollViewWithPage:page4];
//    [self loadScrollViewWithPage:page5];
}

- (void)loadScrollViewWithPage:(UIView*)page
{
    int pageCount = [[scrollView subviews] count];
    
    CGRect bounds = scrollView.bounds;
    bounds.origin.x = bounds.size.width * pageCount;
    bounds.origin.y = 0;
    page.frame = bounds;
    [scrollView addSubview:page];
}
/*
- (IBAction)changePage:(id)sender
{
    
}*/

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
