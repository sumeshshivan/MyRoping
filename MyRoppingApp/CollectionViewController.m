//
//  CollectionViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 05/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "CollectionViewController.h"
#import "MyRoppingItem.h"
#import "MyRoppingDetailViewController.h"

@interface CollectionViewController () {
    
    NSArray *gridItems;
}

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    // Creating all the roppingItems
    MyRoppingItem *item1 = [MyRoppingItem new];
    item1.itemName = @"Angry Birds Cake";
    item1.imageFile = @"angry_birds_cake.jpg";
    
    MyRoppingItem *item2 = [MyRoppingItem new];
    item2.itemName = @"Creme Brelee";
    item2.imageFile = @"creme_brelee.jpg";
    
    MyRoppingItem *item3 = [MyRoppingItem new];
    item3.itemName = @"Egg Benedict";
    item3.imageFile = @"egg_benedict.jpg";
    
    MyRoppingItem *item4 = [MyRoppingItem new];
    item4.itemName = @"Full Breakfast";
    item4.imageFile = @"full_breakfast.jpg";
    
    MyRoppingItem *item5 = [MyRoppingItem new];
    item5.itemName = @"Green Tea";
    item5.imageFile = @"green_tea.jpg";

    MyRoppingItem *item6 = [MyRoppingItem new];
    item6.itemName = @"Ham and Cheese Panini";
    item6.imageFile = @"ham_and_cheese_panini.jpg";

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
    
    if ([segue.identifier isEqualToString:@"showItemDetail"]) {
        NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        MyRoppingDetailViewController *destViewController = segue.destinationViewController;
        destViewController.myRoppingItem = [gridItems objectAtIndex:indexPath.row];
    }
    
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
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    MyRoppingItem *item = [gridItems objectAtIndex:indexPath.row];
    
    // Create a Image View from Image View with tag 100 in the prototype cell
    UIImageView *gridItemsView = (UIImageView *)[cell viewWithTag:100];
    
    // Add image to the Image View from the item's imageFile
    gridItemsView.image = [UIImage imageNamed:item.imageFile];
    
    
//    gridItemsView.image = [UIImage imageNamed:[gridItems objectAtIndex:indexPath.row]];
    
    // Create a Label from Label with tag 1 in the prototype cell
    UILabel *gridLabel = (UILabel *)[cell viewWithTag:1];
    
    // Add Label text from the items's itemName
    gridLabel.text = item.itemName;
    
    
//        NSInteger index = indexPath.row;
//    gridLabel.text = [gridItems objectAtIndex:indexPath.row];

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
