//
//  ViewController.h
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlbumsViewModel.h"
@interface AlbumsViewController : UIViewController<UITableViewDataSource>;
@property (nonatomic) AlbumsViewModel* viewModel;
@end

