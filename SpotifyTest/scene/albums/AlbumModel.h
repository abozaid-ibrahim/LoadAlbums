//
//  AlbumModel.h
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlbumModel : NSObject
@property(nonatomic) NSString* aristName;
@property(nonatomic)  NSString* albumTitle;
@property(nonatomic) NSString* coverArt;

-(instancetype)initWithDic:(NSDictionary*) dic;

@end

NS_ASSUME_NONNULL_END
