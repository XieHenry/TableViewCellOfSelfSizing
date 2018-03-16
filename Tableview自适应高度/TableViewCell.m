//
//  TableViewCell.m
//  Tableview自适应高度
//
//  Created by XieHenry on 17/3/8.
//  Copyright © 2017年 XieHenry. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"


@implementation TableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createCell];
    }
    return self;
}
 

-(void)createCell{
    _contentLabel = [[UILabel alloc]init];
     _contentLabel.numberOfLines = 0;
    _contentLabel.font = [UIFont systemFontOfSize:13];
    [self.contentView addSubview:_contentLabel];

    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left).offset(10);
        make.right.mas_equalTo(self.contentView.mas_right).offset(-10);
        make.top.mas_equalTo(self.contentView.mas_top).offset(10);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-10);
    }];
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:lineView];
    
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.contentView);
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-0);
        make.height.mas_equalTo(0.5);
    }];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
