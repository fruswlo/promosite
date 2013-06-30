//
//  NetShopInfoViewController.m
//  NetShopInfo
//
//  Created by Ahmed Roman on 6/15/13.
//  Copyright 2013 BJIT Inc. All rights reserved.
//

#import "NetShopInfoViewController.h"
#import "KaitenMaeView.h"
#import "KaitenAtoView.h"
#import "KaitenMaeAtoView.h"
#define firstnumber @"1"

@implementation NetShopInfoViewController

-(IBAction)kaitenMae:(id)sender{

	KaitenMaeView *kmv = [[KaitenMaeView alloc] initWithNibName:@"KaitenMaeView" bundle:nil];
	kmv.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:kmv animated:YES];
	[kmv release];
}

-(IBAction)kaitenAto:(id)sender{
	
	KaitenAtoView *kav = [[KaitenAtoView alloc] initWithNibName:@"KaitenAtoView" bundle:nil];
	kav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:kav animated:YES];
	
}

-(IBAction)kaitenMaeAto:(id)sender{
	
	KaitenMaeAtoView *kamv = [[KaitenMaeAtoView alloc] initWithNibName:@"KaitenMaeAtoView" bundle:nil];
	kamv.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:kamv animated:YES];
}

- (IBAction)makeContact:(id)sender{
/*	
	UIAlertView *alert = [[UIAlertView alloc] init];
	[alert setTitle:@"Eストアーまでお問い合わせ"];
	[alert setMessage:@"03-1234-5678"];
	[alert setDelegate:self];
	[alert addButtonWithTitle:@"Yes"];
	[alert addButtonWithTitle:@"No"];
	alert.tag = 1;
	[alert show];
	[alert release];
*/
	
	NSString *actionSheetTitle = @"Eストアーまでお問い合わせ"; //Action Sheet Title
	NSString *destructiveTitle = @"Destructive Button"; //Action Sheet Button Titles
	NSString *other1 = @"E Mail";
	NSString *other2 = @"Voice Call";
//	NSString *other3 = @"Other Button";
	NSString *cancelTitle = @"Cancel";
	UIActionSheet *actionSheet = [[UIActionSheet alloc]
								  initWithTitle:actionSheetTitle
								  delegate:self
								  cancelButtonTitle:cancelTitle
								  destructiveButtonTitle:destructiveTitle
								  otherButtonTitles:other1, other2, nil];
	[actionSheet showInView:self.view];
	
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex 
{
	//Get the name of the current pressed button
	NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
	if  ([buttonTitle isEqualToString:@"Destructive Button"]) {
		NSLog(@"Destructive pressed --> Delete Something");
	}
	if ([buttonTitle isEqualToString:@"E Mail"]) {
		NSLog(@"Voice Call pressed");
		//[self displayMailComposerSheet];
	}
	if ([buttonTitle isEqualToString:@"Voice Call"]) {
		NSLog(@"E Mail pressed");
	}
	if ([buttonTitle isEqualToString:@"Other Button"]) {
		NSLog(@"Other 3 pressed");
	}
	if ([buttonTitle isEqualToString:@"Cancel Button"]) {
		NSLog(@"Cancel pressed --> Cancel ActionSheet");
	}

}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex 
{
    // the user cticlicked one of the OK/Cancel buttons
    if (buttonIndex == 1)
    {
        NSLog(@"ok");
        NSURL *url;
        switch (actionSheet.tag) {
            default:
            case 1:
                url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"tel://%@", firstnumber]];
                break;
        }
        [[UIApplication sharedApplication] openURL:url];
        [url release];
    }
    else
    {
        NSLog(@"cancel");
    }
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
