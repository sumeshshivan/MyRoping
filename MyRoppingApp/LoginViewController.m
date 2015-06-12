//
//  ViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 05/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "LoginViewController.h"
#import "CollectionViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@property (weak, nonatomic) IBOutlet UILabel *incorrectCredentialsLabel;

@end

@implementation LoginViewController

- (IBAction)unwindToLoginPage:(UIStoryboardSegue *)segue {
    _userNameTextField.text = nil;
    _passwordTextField.text = nil;
    
}

- (IBAction)authenticateLogin:(UIButton *)sender {
    
    NSString *userName = _userNameTextField.text;
    NSString *password = _passwordTextField.text;
    
    if ([userName isEqualToString:@"admin"] && [password isEqualToString:@"qburst"]) {
        [self performSegueWithIdentifier:@"LoginSegue" sender:sender];
    } else {
        _incorrectCredentialsLabel.hidden = NO;
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *userName = _userNameTextField.text;
    NSString *password = _passwordTextField.text;
    
    if ([userName isEqualToString:@"admin"] && [password isEqualToString:@"qburst"]) {
        [self performSegueWithIdentifier:@"LoginSegue" sender:self];
    } else {
        _incorrectCredentialsLabel.hidden = NO;
    }
    return YES;
}

@end
