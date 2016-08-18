//
//  HomeMainVC.m
//  My9188
//
//  Created by jinx huang on 16/8/15.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import "HomeMainVC.h"
#import "DYMRollingBannerVC.h"
@interface HomeMainVC ()
@property(nonatomic,strong)UIScrollView* scrollView;
@end

@implementation HomeMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self configViews];
    // Do any additional setup after loading the view.
}


-(void)configViews{
    createweak;
    self.scrollView=[[UIScrollView alloc]init];
    [self.view addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(weakself.view);
        make.right.equalTo(weakself.view);
        make.height.mas_equalTo(ScreenHeight-49);
    }];
    
//    self.scrollView.contentSize=CGSizeMake(ScreenWidth, ScreenHeight*2);
    [self setupBanner];
}

-(void)setupBanner{
    DYMRollingBannerVC *rollingBannerVC= [DYMRollingBannerVC new];
    [self addChildViewController:rollingBannerVC];
    [self.scrollView addSubview:rollingBannerVC.view];
    [rollingBannerVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.scrollView);
        make.right.equalTo(self.scrollView);
        make.height.equalTo(@200);
    }];
    rollingBannerVC.rollingInterval=4;
    [rollingBannerVC didMoveToParentViewController:self];
    rollingBannerVC.rollingImages=@[[UIImage imageNamed:@"banner1"],[UIImage imageNamed:@"banner2"],[UIImage imageNamed:@"banner3"]];
    
    [rollingBannerVC addBannerTapHandler:^(NSInteger whichIndex) {
        NSLog(@"点击了第%@张图", @(whichIndex));
    }];
    [rollingBannerVC startRolling];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
