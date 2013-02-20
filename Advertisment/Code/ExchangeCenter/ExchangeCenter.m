//
//  ExchangeCenter.m
//  hbnlClient
//
//  Created by bb on 1/21/13.
//  Copyright (c) 2013 bb. All rights reserved.
//

//#import "ExchangeItem.h"
#import "ExchangeCenter.h"
#import "ExchangeItemList.h"
#import "ExchangeItemTableCell/ExchangeItemTableCell.h"
#import "AdvertisementScrollView.h"
#import "UserInfoViewController.h"

@interface ExchangeCenter (PrivateMethods)
- (void)loadScrollViewWithPage:(UIView*)page;
//- (void)scrollViewDidScroll:(UIScrollView *)sender;
@end

@implementation ExchangeCenter

@synthesize userInfoView = _userInfoView;
@synthesize adImageView = _adImageView;
@synthesize adScrollView = _adScrollView;
@synthesize adView = _adView;
@synthesize pageControl = _pageControl;
//@synthesize naviBar = _naviBar;
@synthesize tableView = _tableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar"] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.title = @"兑换中心";
    [self.view setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"BG"]]];
    if (self.userInfoView != nil) {
        [self.userInfoView setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"UserInfoBG"]]];
        UserInfoViewController *info = [[UserInfoViewController alloc] initWithNibName:@"UserInfoViewController" bundle:nil];
        [self.userInfoView addSubview:info.view];
    }
    if (self.adView) {
        CGRect scrollFrame = self.adView.frame;
        scrollFrame.origin.y = 0;
        AdvertisementScrollView *view = [[AdvertisementScrollView alloc] initWithFrame:scrollFrame];
        [self.adView addSubview:view];
    }
    if (self.adScrollView != nil) {
//        [self.adScrollView setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"Adtest"]]];
    }
    if (self.adScrollView != nil) {
        self.adScrollView.pagingEnabled = YES;
        self.adScrollView.showsHorizontalScrollIndicator = NO;
        self.adScrollView.showsVerticalScrollIndicator = NO;
        self.adScrollView.contentSize = CGSizeMake(self.adScrollView.frame.size.width * 3, self.adScrollView.frame.size.height);
        self.adScrollView.scrollsToTop = NO;
        self.adScrollView.delegate = self;
    }
    if (self.pageControl != nil) {
        self.pageControl.numberOfPages = 3;
        self.pageControl.currentPage = 0;
    }
    [self createPages];
//    self.view.layer
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomCellIdentifier = @"ExchangeItemIdentifier";
    
    static BOOL nibsRegistered = NO;
    if (!nibsRegistered) {
        UINib *nib = [UINib nibWithNibName:@"ExchangeItemTableCell" bundle:nil];
        [self.tableView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
        nibsRegistered = YES;
    }
    
    ExchangeItemTableCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
    
    if (cell != nil)
    {
        switch ([indexPath row])
        {
            case 0:
                [cell setTitleText:@"QQ币兑换"];
                [cell setSubTitleText:@"subtitle : qq money title."];
                [cell setIconImageFile:[UIImage imageNamed: @"TableCell01"]];
                [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                break;
            case 1:
                [cell setTitleText:@"手机充值卡"];
                [cell setSubTitleText:@"subtitle : mobile phone card."];
                [cell setIconImageFile:[UIImage imageNamed: @"TableCell02"]];
                [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                break;
            case 2:
                [cell setTitleText:@"实物礼品"];
                [cell setSubTitleText:@"subtitle : presents for exchange."];
                [cell setIconImageFile:[UIImage imageNamed: @"TableCell03"]];
                [cell setBandImageFile:[UIImage imageNamed: @"Band1"]];
                break;
            default:
                break;
        }
        [cell setTableCellBG:@"TableCellBG"];
        [cell setTableCellSelectedBG:@"TableCellSelectedBG"];
    }
    while (cell == nil) {
        NSLog(@"cell is nil.");
    }
    return cell;
}

#pragma mark Table Delegate Methods
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 83.0;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *childController = nil;
    switch ([indexPath row])
    {
        case 0:
        {
            childController = [[ExchangeItemList alloc]
                               initWithNibName:@"ExchangeItemList" bundle:nil];
        }
            break;
        case 1:
        {
        }
            break;
        case 2:
        {
        }
            break;
        default:
            break;
    }
    if (childController)
    {
        [self.navigationController pushViewController:childController animated:YES];
    }
    return nil;
}

- (void)loadScrollViewWithPage:(UIView*)page
{
    int pageCount = [[self.adScrollView subviews] count];
    
    CGRect bounds = self.adScrollView.bounds;
    bounds.origin.x = bounds.size.width * pageCount;
    bounds.origin.y = 0;
    page.frame = bounds;
    [self.adScrollView addSubview:page];
    
    /*
    if (page < 0)
        return;
    if (page >= 3)
        return;

    // replace the placeholder if necessary
    MyViewController *controller = [viewControllers objectAtIndex:page];
    if ((NSNull *)controller == [NSNull null])
    {
        controller = [[MyViewController alloc] initWithPageNumber:page];
        [viewControllers replaceObjectAtIndex:page withObject:controller];
        [controller release];
    }
    
    // add the controller's view to the scroll view
//    if (controller.view.superview == nil)
    {
        CGRect frame = self.adScrollView.frame;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        [self.adScrollView addSubview:controller.view];
        
//        NSDictionary *numberItem = [self.contentList objectAtIndex:page];
//        controller.numberImage.image = [UIImage imageNamed:[numberItem valueForKey:ImageKey]];
//        controller.numberTitle.text = [numberItem valueForKey:NameKey];
    }
    */
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // We don't want a "feedback loop" between the UIPageControl and the scroll delegate in
    // which a scroll event generated from the user hitting the page control triggers updates from
    // the delegate method. We use a boolean to disable the delegate logic when the page control is used.
    
//    if (pageControlUsed)
//    {
        // do nothing - the scroll was initiated from the page control, not the user dragging
//        return;
//    }
	
    // Switch the indicator when more than 50% of the previous/next page is visible
    CGFloat pageWidth = self.adScrollView.frame.size.width;
    int page = floor((self.adScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
    
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
//    [self loadScrollViewWithPage:page - 1];
//    [self loadScrollViewWithPage:page];
//    [self loadScrollViewWithPage:page + 1];
    
    // A possible optimization would be to unload the views+controllers which are no longer visible
}

- (IBAction)changePage:(id)sender
{
    int page = self.pageControl.currentPage;
	
    // load the visible page and the page on either side of it (to avoid flashes when the user starts scrolling)
//    [self loadScrollViewWithPage:page - 1];
//    [self loadScrollViewWithPage:page];
//    [self loadScrollViewWithPage:page + 1];
    
	// update the scroll view to the appropriate page
    CGRect frame = self.adScrollView.frame;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0;
    [self.adScrollView scrollRectToVisible:frame animated:YES];
}

- (void)createPages
{
    CGRect pageRect = self.adScrollView.frame;
    
    //create pages
    UIView *page1 = [[UIView alloc] initWithFrame:pageRect];
    page1.backgroundColor = [UIColor blueColor];
    UIView *page2 = [[UIView alloc] initWithFrame:pageRect];
    page2.backgroundColor = [UIColor redColor];
    UIView *page3 = [[UIView alloc] initWithFrame:pageRect];
    page3.backgroundColor = [UIColor greenColor];
    
    //add to scrollview
    [self loadScrollViewWithPage:page1];
    [self loadScrollViewWithPage:page2];
    [self loadScrollViewWithPage:page3];
}

@end
