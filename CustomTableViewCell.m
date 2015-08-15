//
//  CustomTableViewCell.m
//  FirstTaskYalantis
//
//  Created by Никита on 15.08.15.
//  Copyright (c) 2015 Nikita Minakov. All rights reserved.
//

#import "CustomTableViewCell.h"

@interface CustomTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *labelInCell;
@property (weak, nonatomic) IBOutlet UIImageView *imageInCell;


@end


@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
