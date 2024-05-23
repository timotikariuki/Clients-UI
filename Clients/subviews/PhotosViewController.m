//
//  PhotosViewController.m
//  Clients
//
//  Created by star on 5/23/24.
//

#import "PhotosViewController.h"
#import "PhotoCollectionViewCell.h"

@interface PhotosViewController ()

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self.collectionView.collectionViewLayout invalidateLayout];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PhotoCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCollectionViewCellIdentifier" forIndexPath:indexPath];
    NSInteger index = (indexPath.row % 7) + 1;
    NSString *photoName = [NSString stringWithFormat:@"photo%d.png", (int)index];
    [cell.imgPhoto setImage:[UIImage imageNamed:photoName]];
    
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat padding = 12.0; // Space between cells
    CGFloat totalPadding = padding * 4; // 3 items per row -> 4 paddings (left, right, and 2 in between)
    CGFloat cellWidth = (collectionView.frame.size.width - totalPadding) / 3;
    return CGSizeMake(cellWidth, cellWidth); // Square cells
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 12.0; // Space between items
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 12.0; // Space between lines
}

@end
