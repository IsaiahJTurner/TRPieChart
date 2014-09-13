//
//  TRPieChart.h
//  TRPieChart
//
//  Created by Isaiah Turner on 9/13/14.
//  Copyright (c) 2014 Isaiah Turner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "TRPieChartView.h"

@interface TRPieChart : NSObject
@property (nonatomic, strong) UIView *view;

typedef enum foodGroups : NSUInteger
{
    DAIRY,
    FRUIT,
    GRAIN,
    VEGITABLE,
    PROTEIN
} FoodGroup;

- (id)initWithView:(UIView *)view;
- (void)setValue:(int)value forFoodGroup:(FoodGroup)foodGroup;

@end
