//
//  AlbumTableCell.m
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AlbumTableCell.h"
@implementation AlbumTableCell

-(void)setCellData:(AlbumModel*) album{
    _artistNameLbl.text = album.aristName;
    _albumTitleLbl.text = album.albumTitle;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
