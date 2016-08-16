//
//  DiscoverCell.h
//  My9188
//
//  Created by huangjinyang on 16/8/16.
//  Copyright © 2016年 jinx huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiscoverModel.h"
@interface DiscoverCell : UITableViewCell
@property(nonatomic,strong)DiscoverModel* model;
-(void)dataBind;
@end
