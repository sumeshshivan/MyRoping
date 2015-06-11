//
//  MyRopingItem.h
//  MyRoppingApp
//
//  Created by Sumesh on 08/06/15.
//  Copyright (c) 2015 qburst. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyRoppingItem : NSObject

@property NSInteger itemType;
@property (nonatomic, strong) NSString *itemLabel;
@property (nonatomic, strong) NSString *imageFile;
@property (nonatomic, strong) NSDictionary *itemDetails;

@end
