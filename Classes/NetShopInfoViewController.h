//
//  NetShopInfoViewController.h
//  NetShopInfo
//
//  Created by Ahmed Roman on 6/15/13.
//  Copyright 2013 BJIT Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@class KaitenMaeView;
@class KaitenAtoView;
@class KaitenMaeAtoView;

@interface NetShopInfoViewController : UIViewController <UIActionSheetDelegate>
{	

}

-(IBAction)kaitenMae:(id)sender;
-(IBAction)kaitenAto:(id)sender;
-(IBAction)kaitenMaeAto:(id)sender;
-(IBAction)makeContact:(id)sender;
//-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;


@end

