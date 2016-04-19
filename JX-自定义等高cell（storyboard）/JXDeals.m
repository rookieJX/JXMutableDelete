//
//  JXDeals.m
//  JX-自定义等高cell（storyboard）
//
//  Created by 王加祥 on 16/4/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "JXDeals.h"

@implementation JXDeals

+ (instancetype)dealsWithDict:(NSDictionary *)dict {
    JXDeals * deal = [[self alloc] init];
    [deal setValuesForKeysWithDictionary:dict];
    return deal;
}
@end
