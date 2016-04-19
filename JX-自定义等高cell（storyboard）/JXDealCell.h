//
//  JXDealCell.h
//  JX-自定义等高cell（storyboard）
//
//  Created by 王加祥 on 16/4/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JXDeals;

@interface JXDealCell : UITableViewCell
/** 模型 */
@property (nonatomic,strong) JXDeals * deal;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
