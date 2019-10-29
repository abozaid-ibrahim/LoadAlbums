//
//  AlbumsViewModel.h
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIClient.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlbumsViewModel : NSObject
-(instancetype)initWithApiLoad:(APIClient*)apiCleint;
-(void)getAlbumsList:(void (^)(BOOL reload, NSError* error))onComplete;
@property (nonatomic) NSMutableArray* albumsList;

@end

NS_ASSUME_NONNULL_END
