//
//  AlbumModel.m
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AlbumModel.h"

@implementation AlbumModel
-(instancetype)initWithDic:(NSDictionary*) dic{
    if (self = [super init]) {
        self.aristName = [dic valueForKey:@"artist_name"];
        self.albumTitle = [dic valueForKey:@"album_title"];
        self.coverArt = [dic valueForKey:@"cover_art"];
    }
    return self;
}
@end
