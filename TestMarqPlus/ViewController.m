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
    //Button initialization
    UIButton *goMarqPlusButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    goMarqPlusButton.frame = CGRectMake(0, 0, 150.0f, 30.0f);
    [goMarqPlusButton addTarget:self action:@selector(goMarqplus) forControlEvents:UIControlEventTouchUpInside];
    [goMarqPlusButton setTitle:@"Go to Marqplus" forState:UIControlStateNormal];
    [self.view addSubview:goMarqPlusButton];
    
    //Autolayout
    [goMarqPlusButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSLayoutConstraint *Button_Constraint= [NSLayoutConstraint  constraintWithItem:goMarqPlusButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0
                                            ];
    [self.view addConstraint:Button_Constraint];
    
    Button_Constraint= [NSLayoutConstraint   constraintWithItem:goMarqPlusButton
                                                      attribute:NSLayoutAttributeTop
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:self.view
                                                      attribute:NSLayoutAttributeTop
                                                     multiplier:1.0
                                                       constant:100.0
                        ];
    [self.view addConstraint:Button_Constraint];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)goMarqplus{
    NSURL *url = [NSURL URLWithString:@"marqplus://com.marq.plus/"];
    if ([[UIApplication sharedApplication] canOpenURL:url])
    {
        [[UIApplication sharedApplication] openURL:url];
    }
    else
    {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat: @"https://itunes.apple.com/us/app/laiq-like-you-armakes-your/id1162553749"]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end
