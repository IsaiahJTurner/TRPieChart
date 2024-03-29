//
//  ViewController.m
//  TRPieChart
//
//  Created by Isaiah Turner on 9/13/14.
//  Copyright (c) 2014 Isaiah Turner. All rights reserved.
//

#import "ViewController.h"
#import "TRPieChart.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *circleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TRPieChart *chart = [[TRPieChart alloc] initWithView:self.circleView];
    [chart setValue:0.5 forFoodGroup:FRUIT];
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureRecognizer:)];
    [self.circleView addGestureRecognizer:singleTap];
}

- (void)singleTapGestureRecognizer:(UITapGestureRecognizer *)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
