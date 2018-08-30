//
//  MyCollectionViewController.m
//  DeviceInfo
//
//  Created by Reason Lee on 2018/5/22.
//  Copyright © 2018 Reason Lee. All rights reserved.
//

#import "MyCollectionViewItem.h"
#import "MyCollectionViewController.h"

@interface MyCollectionViewController()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation MyCollectionViewController

-(instancetype)init
{
    if(self = [super init]) {
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.headerReferenceSize = CGSizeMake(self.view.frame.size.width, 100);
        layout.itemSize = CGSizeMake(125, 107);
        [self.collectionView registerClass:[MyCollectionViewItem class] forCellWithReuseIdentifier:@"cellId"];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //[self.collectionView registerClass:<#(nullable Class)#> forCellWithReuseIdentifier:<#(nonnull NSString *)#>]
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section
{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCollectionViewItem *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    cell.nameLabel.text = @"TEST";
    cell.iconImageView.image = [UIImage imageNamed:@"redeem"];
    
    return cell;
}





@end
