//
//  AppDelegate.h
//  Project1
//
//  Created by lighter on 2014/8/30.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "CoreDataHelper.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, retain) TableViewController *tableVC;
@property (nonatomic, retain) UINavigationController *navigationVC;

@property (nonatomic, strong, readonly) CoreDataHelper *coreDataHelper;

@end

