//
//  RHTableViewTestCell.m
//  RHTableViewDemo
//
//  Created by zhuruhong on 16/4/24.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import "RHTableViewTestCell.h"

@implementation RHTableViewTestCell

+ (void)load
{
    [self registerRenderCell:[self class] type:999];
}

- (void)updateViewWithData:(id)cellData
{
    [super updateViewWithData:cellData];
    
    NSLog(@"%@ RHTableViewTestCell...", [self class]);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
