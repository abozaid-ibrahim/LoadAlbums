//
//  ViewController.m
//  SpotifyTest
//
//  Created by abuzeid on 10/29/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AlbumsViewController.h"
#import "APIClient.h"
#import "AlbumTableCell.h"
#import "AlbumModel.h"
@interface AlbumsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *albumsTableView;
@end

@implementation AlbumsViewController
static NSString* cellId = @"AlbumTableCell";
- (void)viewDidLoad {
    [super viewDidLoad];
    _viewModel = [[AlbumsViewModel alloc] initWithApiLoad:[APIClient new]];
    [self configureTableView];
    [self getData];
  
}
-(void)getData{
    __weak typeof(self) welf = self;
    [_viewModel getAlbumsList:^(BOOL reload, NSError * _Nonnull error) {
        [welf loadDataInTableView];
    }];
}
-(void)configureTableView{
    [self.albumsTableView setDataSource:self];
    UINib *nib = [UINib nibWithNibName:cellId bundle:nil];
    [self.albumsTableView registerNib:nib forCellReuseIdentifier:cellId];
}
-(void)loadDataInTableView{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.albumsTableView reloadData];
    });
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _viewModel.albumsList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AlbumTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    AlbumModel *cellData = _viewModel.albumsList[indexPath.row];
    [cell setCellData:cellData];
    return cell;
}

@end
