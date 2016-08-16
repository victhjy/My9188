//
//  DiscoverVC.m
//  My9188
//
//  Created by jinx huang on 16/8/15.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import "DiscoverVC.h"
#import "DiscoverCell.h"
@interface DiscoverVC ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DiscoverVC

- (void)viewDidLoad {
    createweak;
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"发现";
    UITableView* table=[[UITableView alloc]init];
    table.tableFooterView=[UIView new];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.view.mas_top);
        make.width.equalTo(weakself.view.mas_width);
        make.height.mas_equalTo(weakself.view.frame.size.height-49);
    }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

-(UITableViewCell* )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DiscoverCell* cell=[[DiscoverCell alloc]init];
    
//    cell.model=self.models[indexPath.section];
    [cell dataBind];
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
