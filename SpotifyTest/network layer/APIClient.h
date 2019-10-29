//
//  APIClient.h
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIClient : NSObject
-(void)getData:(NSString*) path completion:(void (^)(id results, NSError* error))onComplete;
@end

NS_ASSUME_NONNULL_END
