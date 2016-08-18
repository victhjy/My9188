//
//  DiscoverCell.m
//  My9188
//
//  Created by huangjinyang on 16/8/16.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import "DiscoverCell.h"

@implementation DiscoverCell
{
    UIImageView* _headImage;
    UILabel* _title;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.translatesAutoresizingMaskIntoConstraints=YES;
        
        [self createUI];
        
        [self setttingViewAtuoLayout];
    }
    
    return self;
}

-(void)createUI{
    _headImage=[[UIImageView alloc]init];
    _title=[UILabel new];
    
    [self.contentView addSubview:_headImage];
    [self.contentView addSubview:_title];
    
   
    
   
}

-(void)setttingViewAtuoLayout{
    createweak;
    [_headImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.left.equalTo(weakself.contentView.mas_left);
        make.top.equalTo(weakself.contentView.mas_top).offset(10);
    }];
    [_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.contentView.mas_top).offset(10);
        make.left.equalTo(_headImage.mas_right).offset(10);
    }];
}

-(void)dataBind{
//    NSString* imageUrl=self.model.image;
    _headImage.image=[UIImage imageNamed:@"live_normal"];
    _title.text=@"12345";
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
