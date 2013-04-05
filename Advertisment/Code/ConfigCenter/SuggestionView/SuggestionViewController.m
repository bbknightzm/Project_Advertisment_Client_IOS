//
//  SuggestionViewController.m
//  Advertisment
//
//  Created by bb on 13-4-2.
//  Copyright (c) 2013年 bb. All rights reserved.
//

#import "SuggestionViewController.h"
#import "GCTabBarController.h"
#import "ConfigCenterString.h"

@interface SuggestionViewController ()

@end

@implementation SuggestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
/*
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
/*    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 40, 320, 50);
    [button setTitle: @"Mail" forState: UIControlStateNormal];
    [button addTarget: self action: @selector(sendEMail) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: button];*/
//    [self sendEMail];
    Class mailClass = (NSClassFromString(@"MFMailComposeViewController"));
    
    if (mailClass != nil)
    {
        if ([mailClass canSendMail])
        {
            [self displayComposerSheet];
        }
        else
        {
            [self launchMailAppOnDevice];
        }
    }
    else
    {
        [self launchMailAppOnDevice];
    }
}

- (void) alertWithTitle: (NSString *)_title_ msg: (NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:_title_
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}
/*
//点击按钮后，触发这个方法
-(void)sendEMail
{
    Class mailClass = (NSClassFromString(@"MFMailComposeViewController"));
    
    if (mailClass != nil)
    {
        if ([mailClass canSendMail])
        {
            [self displayComposerSheet];
        }
        else
        {
            [self launchMailAppOnDevice];
        }
    }
    else
    {
        [self launchMailAppOnDevice];
    }
}
 */

//可以发送邮件的话
-(void)displayComposerSheet
{
    MFMailComposeViewController *mailPicker = [[MFMailComposeViewController alloc] init];
    
    [mailPicker.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBar"] forBarMetrics:UIBarMetricsDefault];
    
    mailPicker.mailComposeDelegate = self;
    
    //设置主题
    [mailPicker setSubject:ccSuggestion];
    
    // 添加发送者
    NSArray *toRecipients = [NSArray arrayWithObject:defaultEMail];
    //NSArray *ccRecipients = [NSArray arrayWithObjects:@"second@example.com", @"third@example.com", nil];
    //NSArray *bccRecipients = [NSArray arrayWithObject:@"fourth@example.com", nil];
    [mailPicker setToRecipients: toRecipients];
    //[picker setCcRecipients:ccRecipients];
    //[picker setBccRecipients:bccRecipients];
    
    // 添加图片
//    UIImage *addPic = [UIImage imageNamed: @"123.jpg"];
//    NSData *imageData = UIImagePNGRepresentation(addPic);            // png
    // NSData *imageData = UIImageJPEGRepresentation(addPic, 1);    // jpeg
//    [mailPicker addAttachmentData: imageData mimeType: @"" fileName: @"123.jpg"];
    
//    NSString *emailBody = @"eMail 正文";
//    [mailPicker setMessageBody:emailBody isHTML:YES];
    
    GCTabBarController *tab = self.parentViewController.gcTabBarController;
    [tab hidesTabBar:YES animated:YES];
    [self presentModalViewController: mailPicker animated:NO];
}

-(void)launchMailAppOnDevice
{
    //NSString *recipients = @"mailto:first@example.com?subject=my email!";
    //@"mailto:first@example.com?cc=second@example.com,third@example.com&subject=my email!";
    NSString *recipients = [NSString stringWithFormat:@"mailto:%@?subject=%@", defaultEMail, ccSuggestion];

//    NSString *body = @"&body=email body!";
    
//    NSString *email = [NSString stringWithFormat:@"%@%@", recipients, body];
    NSString *email = [NSString stringWithFormat:@"%@", recipients];
    email = [email stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
    
    GCTabBarController *tab = self.parentViewController.gcTabBarController;
    [tab hidesTabBar:NO animated:YES];
    [self.navigationController popViewControllerAnimated:NO];
    
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString:email]];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    NSString *msg;
    
    switch (result)
    {
        case MFMailComposeResultCancelled:
            msg = @"邮件发送取消";
            break;
        case MFMailComposeResultSaved:
            msg = @"邮件保存成功";
            [self alertWithTitle:nil msg:msg];
            break;
        case MFMailComposeResultSent:
            msg = @"邮件发送成功";
            [self alertWithTitle:nil msg:msg];
            break;
        case MFMailComposeResultFailed:
            msg = @"邮件发送失败";
            [self alertWithTitle:nil msg:msg];
            break;
        default:
            break;
    }
    
    GCTabBarController *tab = self.parentViewController.gcTabBarController;
    [tab hidesTabBar:NO animated:YES];
    
    [self dismissModalViewControllerAnimated:YES];
    [self.navigationController popViewControllerAnimated:NO];
}

@end
