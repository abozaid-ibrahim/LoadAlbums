//
//  APIClient.m
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "APIClient.h"
@interface APIClient()

@end
@implementation APIClient

-(void)getData:(NSString*) path completion:(void (^)(id results, NSError* error))onComplete{
    NSString*  url = [NSString stringWithFormat:@"%@",@"https://gist.githubusercontent.com/BalestraPatrick/c181d9ab5409e09e02b26f8d23493db5/raw/0a58cd83c08b42b8b2ec14ab3876a5e73da0c184/albums.json"];
    NSURL* endpoint = [NSURL URLWithString:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:endpoint completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        NSLog(@"%@", [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil]);
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        onComplete(json,error);
        
        
    }];
    [task resume];
    // Begin task.
    
}
@end
