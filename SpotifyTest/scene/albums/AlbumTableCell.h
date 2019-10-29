//
//  AlbumTableCell.h
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *artistNameLbl;
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLbl;
-(void)setCellData:(AlbumModel*) album;
@end

NS_ASSUME_NONNULL_END
