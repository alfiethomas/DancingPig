//
//  ViewController.m
//  DancingPig
//
//  Created by Alistair Thomas on 09/07/2016.
//  Copyright (c) 2016 truffler. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Load images
    NSArray *imageNames = @[@"pig1.png", @"pig2.jpg"];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    
    // Normal Animation
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 75, 276, 450)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 1;
    
    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
