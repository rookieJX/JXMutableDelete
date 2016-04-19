//
//  JXDeals.h
//  JX-自定义等高cell（storyboard）
//
//  Created by 王加祥 on 16/4/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXDeals : NSObject
/** 团购图片 */
@property (nonatomic,strong) NSString * icon;
/** 团购标题 */
@property (nonatomic,strong) NSString * title;
/** 团购价格 */
@property (nonatomic,strong) NSString * price;
/** 团购数量 */
@property (nonatomic,strong) NSString * buyCount;

/** 团购标识 */
@property (nonatomic,assign,getter=isCheck) BOOL check;
+ (instancetype)dealsWithDict:(NSDictionary *)dict;
@end
