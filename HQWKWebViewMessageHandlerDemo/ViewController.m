//
//  ViewController.m
//  WKWebViewMessageHandlerDemo
//
//  Created by Mr_Han on 18/9/11.
//  Copyright © 2018年 Mr_Han. All rights reserved.
//  CSDN <https://blog.csdn.net/u010960265>
//  GitHub <https://github.com/HanQiGod>
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
#import "WKWebViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(30, 100, 250, 30);
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"WKWebViewMessageHandler" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)buttonAction:(id)sender
{
    WKWebViewController *webController = [[WKWebViewController alloc] init];
    [self.navigationController pushViewController:webController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
