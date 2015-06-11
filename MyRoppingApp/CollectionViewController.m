//
//  CollectionViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 05/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "CollectionViewController.h"
#import "MyRoppingItem.h"

@interface CollectionViewController () {
    
    NSArray *gridItems;
}

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier1 = @"CellType1";
static NSString * const reuseIdentifier2 = @"CellType2";
static NSString * const reuseIdentifier3 = @"CellType3";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    // Creating all the roppingItems
    MyRoppingItem *item1 = [MyRoppingItem new];
    item1.itemType = 1;
    item1.itemLabel = @"My Profile";
    item1.imageFile = @"Ropping1.jpg";
    
    MyRoppingItem *item2 = [MyRoppingItem new];
    item2.itemType = 2;
    item2.itemLabel = @"Ropping2";
    
    MyRoppingItem *item3 = [MyRoppingItem new];
    item3.itemType = 3;
    item3.imageFile = @"roadmaps.png";
    
    MyRoppingItem *item4 = [MyRoppingItem new];
    item4.itemType = 1;
    item4.itemLabel = @"Ham and Cheese Panini";
    item4.imageFile = @"Ropping3.png";
    
    MyRoppingItem *item5 = [MyRoppingItem new];
    item5.itemType = 3;
    item5.imageFile = @"Horse.jpg";
    
    MyRoppingItem *item6 = [MyRoppingItem new];
    item6.itemType = 3;
    item6.imageFile = @"icon220x220.png";

    // Adding the items to gridItems Array
    gridItems = [NSArray arrayWithObjects:item1, item2, item3, item4, item5, item6, nil];
    
    
//    gridItems = [NSArray arrayWithObjects:@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//    
//    if ([segue.identifier isEqualToString:@"showItemDetail"]) {
//        NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
//        MyRoppingDetailViewController *destViewController = segue.destinationViewController;
//        destViewController.myRoppingItem = [gridItems objectAtIndex:indexPath.row];
//    }
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete method implementation -- Return the number of items in the section
    return gridItems.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell;
    UIImageView *gridItemsView;
    UILabel *gridLabel;
    
    MyRoppingItem *item = [gridItems objectAtIndex:indexPath.row];
    
    // Create different cells from prototype based on the item type
    switch (item.itemType) {
        case 1:
            // Cell Type 1  : Image and Label
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier1 forIndexPath:indexPath];
            gridItemsView = (UIImageView *)[cell viewWithTag:100];
            gridItemsView.image = [UIImage imageNamed:item.imageFile];
            gridLabel = (UILabel *)[cell viewWithTag:1];
            gridLabel.text = item.itemLabel;
            break;
            
        case 2:
            // Cell Type 2 : Title Label and detail Label
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier2 forIndexPath:indexPath];
            gridLabel = (UILabel *)[cell viewWithTag:1];
            gridLabel.text = item.itemLabel;
            break;
        case 3:
            // Cell Type 2 : Image only
            cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier3 forIndexPath:indexPath];
            gridItemsView = (UIImageView *)[cell viewWithTag:100];
            gridItemsView.image = [UIImage imageNamed:item.imageFile];
            break;
        default:
            break;
    }
    
    // Adding shadow to cells
    cell.layer.masksToBounds = NO;
    cell.layer.contentsScale = [UIScreen mainScreen].scale;
    cell.layer.shadowOpacity = 0.2f;
    cell.layer.shadowRadius = 3.0f;
//    cell.layer.shadowOffset = CGSizeZero;
    cell.layer.shadowOffset = CGSizeMake(2.0f, 2.0f);
    cell.layer.shouldRasterize = YES;
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

#pragma mark <UICollectionViewLayoutDelegate>

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Adjust cell size for orientation
//    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ) {
//        return CGSizeMake(400.0f, 500.0f);
//    }
//    return CGSizeMake(1400.0f, 140.0f);
//}

@end
