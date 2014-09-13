//
//  TRPieChart.m
//  TRPieChart
//
//  Created by Isaiah Turner on 9/13/14.
//  Copyright (c) 2014 Isaiah Turner. All rights reserved.
//

#import "TRPieChart.h"

@implementation TRPieChart {
    TRPieChartView *chartView;
}

- (id)initWithView:(UIView *)view {
    if (!self) {
        self = [super init];
    }
    self.view = view;
    NSArray *nibViews = [[NSBundle mainBundle] loadNibNamed:@"TRPieChartView" owner:self options:nil];
    
    chartView = [nibViews objectAtIndex:1];
    [self.view addSubview:chartView];
    return self;
}

- (void)setValue:(int)value forFoodGroup:(FoodGroup)foodGroup {
    UIImageView *image;
    int top = 0;
    int left = 0;
    int right = 0;
    int bottom = 0;
    
    switch(foodGroup){
        case DAIRY: {
            image = chartView.chartDairy;
            left = chartView.chartDairy.frame.size.width * value;
            NSLog(@"dairy updated to %d", value);
            break;
        }
        case FRUIT: {
            image = chartView.chartFruits;
            right = chartView.chartFruits.frame.size.width * value;
            NSLog(@"fruit updated to %d", value);
            break;
        }
        case GRAIN: {
            image = chartView.chartGrains;
            bottom = chartView.chartGrains.frame.size.width * value;
            NSLog(@"grain updated to %d", value);
            break;
        }
        case VEGITABLE: {
            image = chartView.chartVegitables;
            top = chartView.chartVegitables.frame.size.width * value;
            NSLog(@"vegitable updated to %d", value);
            break;
        }
        case PROTEIN: {
            image = chartView.chartProtein;
            right = chartView.chartFruits.frame.size.width * value;
            NSLog(@"protein updated to %d", value);
            break;
        }
        default: {
            NSLog(@"ERROR: Unknown food group.");
            break;
        }
    }
    CGRect cropRegion = CGRectMake(-left, -top, image.frame.size.height - right, image.frame.size.height - bottom);
    CGImageRef subImage = CGImageCreateWithImageInRect(image.image.CGImage, cropRegion);
    UIImage *croppedImage = [UIImage imageWithCGImage:subImage];
    image.image = croppedImage;
    /* [UIView animateWithDuration:3.0f
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^(void) {
                         image.frame = CGRectMake(image.frame.origin.x, image.frame.origin.y, image.frame.size.width, image.frame.size.height);
                     }
                     completion:NULL];*/
}

@end
