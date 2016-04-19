//
//  JXTableViewController.m
//  JX-自定义等高cell（storyboard）
//
//  Created by 王加祥 on 16/4/18.
//  Copyright © 2016年 Wangjiaxiang. All rights reserved.
//

#import "JXTableViewController.h"
#import "JXDeals.h"
#import "JXDealCell.h"
@interface JXTableViewController ()<UITableViewDelegate,UITableViewDataSource>

/** 团购数组 */
@property (nonatomic,strong) NSMutableArray * deals;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation JXTableViewController
- (IBAction)remove {
//    // 构建临时数组存放需要删除的数据
//    NSMutableArray * delete = [NSMutableArray array];
//    for (JXDeals *deal in self.deals) {
//        if (deal.isCheck) {
//            [delete addObject:deal];
//        }
//    }
//    
//    // 删除数据
//    [self.deals removeObjectsInArray:delete];
//    
//    // 刷新
//    [self.tableView reloadData];
    
    // 获取多行选中的cell
    NSArray * array = [self.tableView indexPathsForSelectedRows];
    NSMutableArray * delete = [NSMutableArray array];
    for (NSIndexPath * patn in array) {
        [delete addObject:self.deals[patn.row]];
    }
    [self.deals removeObjectsInArray:delete];
    [self.tableView reloadData];
}
- (IBAction)mutableDelete {
    
    [self.tableView setEditing:!self.tableView.isEditing animated:YES];
}


- (NSMutableArray *)deals {
    if (_deals == nil) {
        // 数据路劲
        NSString * path = [[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil];
        NSArray * array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray * deals = [NSMutableArray array];
        for (NSDictionary * dict in array) {
            JXDeals * deal = [JXDeals dealsWithDict:dict];
            [deals addObject:deal];
        }
        _deals = deals;
    }
    return _deals;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 在编辑的时候允许多选
    self.tableView.allowsMultipleSelectionDuringEditing = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.deals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    JXDealCell * cell = [JXDealCell cellWithTableView:tableView];
    JXDeals * deal = self.deals[indexPath.row];
    cell.deal = deal;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    JXDeals * deal = self.deals[indexPath.row];
//    deal.check = !deal.isCheck;
//    
//    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationLeft];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
@end
