//
//  KaitenMaeView.m
//  NetShopInfo
//
//  Created by Ahmed Roman on 6/15/13.
//  Copyright 2013 Estore Corporation. All rights reserved.
//

#import "KaitenMaeView.h"
#import "KaitenMaeStepOne.h"

@implementation KaitenMaeView

-(IBAction)kaitenMaeOne:(id)sender{

	KaitenMaeStepOne *kmso = [[KaitenMaeStepOne alloc] initWithNibName:@"KaitenMaeStepOne" bundle:nil];
	kmso.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;	// here change transition
	[self presentModalViewController:kmso animated:YES];

}


-(IBAction)goBack:(id)sender{

	//[self dismissModalViewControllerAnimated:YES];
	[self.parentViewController dismissModalViewControllerAnimated:YES];

}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
