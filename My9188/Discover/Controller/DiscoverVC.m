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
{
    UITableView* _tableView;
}
- (void)viewDidLoad {
    createweak;
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"发现";
    [self refreshSetup];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.view.mas_top);
        make.width.equalTo(weakself.view.mas_width);
        make.height.mas_equalTo(weakself.view.frame.size.height-49);
    }];
    // Do any additional setup after loading the view.
}

-(void)refreshSetup{
    createweak;
    _tableView=[[UITableView alloc]init];
    _tableView.tableFooterView=[UIView new];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    [self.view addSubview:_tableView];
    // 给一个标识符，告诉tableView要创建哪个类
    [_tableView registerClass:[DiscoverCell class] forCellReuseIdentifier:@"cell"];
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingBlock:^{
        [weakself refresh];
    }];
    _tableView.mj_header=header;
    header.lastUpdatedTimeLabel.hidden=YES;
}

-(void)refresh{
    NSLog(@"“发现”列表正在下拉刷新");
    [_tableView.mj_header endRefreshing];
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
