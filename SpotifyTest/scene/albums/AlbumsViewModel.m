//
//  AlbumsViewModel.m
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AlbumsViewModel.h"
#import "AlbumModel.h"
@interface AlbumsViewModel()
@property (nonatomic) APIClient* apiClient;
@end
@implementation AlbumsViewModel
-(instancetype)initWithApiLoad:(APIClient*)apiCleint{
    if (self = [super init]) {
        _apiClient = apiCleint;
        _albumsList = [NSMutableArray new];
    }
    return self;
}
-(void)getAlbumsList:(void (^)(BOOL reload, NSError* error))onComplete{
    __weak typeof(self) welf = self;
    [self.apiClient getData:@"" completion:^(id  _Nonnull results, NSError * _Nonnull error) {
        NSDictionary *albums = [results valueForKey:@"results"];
        for (NSDictionary* dic in albums){
            AlbumModel* album = [[AlbumModel alloc] initWithDic:dic];
            [welf.albumsList addObject:album];
        }
        onComplete(true, nil);
    }];
}
@end
