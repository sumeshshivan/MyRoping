//
//  MyRoppingDetailViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 08/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "MyRoppingDetailViewController.h"

@interface MyRoppingDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myRoppingImage;
@property (weak, nonatomic) IBOutlet UILabel *myRoppingLabel;

@end

@implementation MyRoppingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myRoppingLabel.text = _myRoppingItem.itemName;
    _myRoppingImage.image = [UIImage imageNamed:_myRoppingItem.imageFile];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
