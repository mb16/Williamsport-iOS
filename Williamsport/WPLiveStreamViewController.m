//
//  WPLiveStreamViewController.m
//  Williamsport
//
//  Created by Michael Brandt on 10/30/14.
//  Copyright (c) 2014 Williamsport Seventh-day Adventist Church. All rights reserved.
//

#import "WPLiveStreamViewController.h"

@interface WPLiveStreamViewController ()

@end

@implementation WPLiveStreamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *websiteUrl = [NSURL URLWithString:@"http://www.williamsportsda.com/live-video-player-app.php"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.liveStreamWebView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
