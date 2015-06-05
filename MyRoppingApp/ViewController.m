//
//  ViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 05/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@end

@implementation ViewController

- (IBAction)authenticateLogin:(UIButton *)sender {
    
    NSString *userName = _userNameTextField.text;
    NSString *password = _passwordTextField.text;
    
    if ([userName isEqualToString:@"admin"] && [password isEqualToString:@"qburst"]) {
        [self performSegueWithIdentifier:@"LoginSegue" sender:sender];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
