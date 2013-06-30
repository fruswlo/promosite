//
//  NetShopInfoAppDelegate.h
//  NetShopInfo
//
//  Created by Ahmed Roman on 6/15/13.
//  Copyright 2013 BJIT Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NetShopInfoViewController;

@interface NetShopInfoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NetShopInfoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NetShopInfoViewController *viewController;

@end

