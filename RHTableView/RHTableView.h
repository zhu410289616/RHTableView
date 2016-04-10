//
//  RHTableView.h
//  RHToolkit
//
//  Created by zhuruhong on 15/6/27.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHTableViewAdapter;

@interface RHTableView : UITableView

- (void)setTableViewAdapter:(RHTableViewAdapter *)tableViewAdapter;

@end
