//
//  MapLoadViewController.m
//  MyRoppingApp
//
//  Created by Sumesh on 11/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import "MapLoadViewController.h"

@interface MapLoadViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *MapName;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation MapLoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.locationManager = [[CLLocationManager alloc]init];
    self.locationManager.delegate = self;
    CLAuthorizationStatus authorizationStatus= [CLLocationManager authorizationStatus];
    
    if (authorizationStatus == kCLAuthorizationStatusAuthorizedAlways ||
        authorizationStatus == kCLAuthorizationStatusAuthorizedWhenInUse) {
        
        [self.locationManager startUpdatingLocation];
        _MapName.showsUserLocation = YES;
    }
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
