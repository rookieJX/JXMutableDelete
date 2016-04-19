//
//  JXDealCell.m
//  JX-自定义等高cell（storyboard）
//
//  Created by 王加祥 on 16/4/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "JXDealCell.h"
#import "JXDeals.h"
@interface JXDealCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *buyCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *checkView;

@end

@implementation JXDealCell

- (void)setDeal:(JXDeals *)deal {
    _deal = deal;
    self.iconView.image = [UIImage imageNamed:deal.icon];
    self.titleLabel.text = deal.title;
    self.priceLabel.text = deal.price;
    self.buyCountLabel.text = [NSString stringWithFormat:@"共%@团购",deal.buyCount];
    self.checkView.hidden = !deal.isCheck;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString * identifier = @"cell";
    JXDealCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    // 第一种解决办法
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    return cell;
}
@end
