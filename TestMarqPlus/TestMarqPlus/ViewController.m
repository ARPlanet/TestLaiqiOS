//
//  ViewController.m
//  TestMarqPlus
//  Xcode 7.2
//  Created by arplanet on 2016/1/15.
//  Copyright © 2016年 joe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Button init
    UIButton *goAppButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    goAppButton.frame = CGRectMake(50.0f, 50.0f, 150.0f, 30.0f);
    [goAppButton addTarget:self action:@selector(goMarqplus) forControlEvents:UIControlEventTouchUpInside];
    [goAppButton setTitle:@"Go to Marqplus" forState:UIControlStateNormal];
    [self.view addSubview:goAppButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)goMarqplus{
    NSURL *url = [NSURL URLWithString:@"marqplus://"];
    [self gotoMarqplusAPI:url];
}

-(void)gotoMarqplusAPI:(NSURL *)appURL{
    if ([[UIApplication sharedApplication] canOpenURL:appURL])
    {
        [[UIApplication sharedApplication] openURL:appURL];
    }
    else
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat: @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=%@", @"681758165"]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end
