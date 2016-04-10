//
//  RHTableViewCellModel.h
//  RHCommonFoundation
//
//  Created by zhuruhong on 16/4/9.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class RHTableViewCell;

typedef CGFloat(^HeightForRowBlock)(UITableView *tableView, NSIndexPath *indexPath);
typedef RHTableViewCell *(^CellForRowBlock)(UITableView *tableView, NSIndexPath *indexPath);

@interface RHTableViewCellModel : NSObject

@property (nonatomic, strong) id cellData;
@property (nonatomic, copy, readonly) HeightForRowBlock heightForRowBlock;
@property (nonatomic, copy, readonly) CellForRowBlock cellForRowBlock;

- (void)setHeightForRowBlock:(CGFloat(^)(UITableView *tableView, NSIndexPath *indexPath))heightForRowBlock;
- (void)setCellForRowBlock:(RHTableViewCell *(^)(UITableView *tableView, NSIndexPath *indexPath))cellForRowBlock;

@end
