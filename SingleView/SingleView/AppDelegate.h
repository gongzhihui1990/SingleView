//
//  AppDelegate.h
//  SingleView
//
//  Created by 龚志辉 on 2017/9/15.
//  Copyright © 2017年 龚志辉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

