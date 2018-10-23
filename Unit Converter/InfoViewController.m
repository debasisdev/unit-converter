//
//  InfoViewController.m
//  Unit Converter
//
//  Created by Lion User on 24/10/2012.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize rate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)dealloc 
{
    [rate release];
    [super dealloc];
}

-(IBAction) sliderChanged:(id) sender
{
    UISlider *slider = (UISlider *) sender;
    int progressAsInt =(int)(slider.value + 0.5f);
    NSString *newText =[[NSString alloc] initWithFormat:@"%d",progressAsInt];
    self.rate.text = newText;
    [newText release];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)mailprsd
{
    MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
    mailer.mailComposeDelegate = self;
    
    [mailer setSubject:@"A Message From Unit Converter User"];
    NSArray *toRecipients = [NSArray arrayWithObjects:@"debasis.babun@gmail.com", nil];
    [mailer setToRecipients:toRecipients];
    
    NSString *a = @"I Used Your App & I'm Rating It As ";
    NSString *b = [[NSString alloc] initWithFormat:@"%@",rate.text];    
    NSString *c = @" Out Of 10";
    NSString *emailBody = [NSString stringWithFormat:@"%@%@%@",a,b,c];
    [mailer setMessageBody:emailBody isHTML:NO];
    [self presentModalViewController:mailer animated:YES];
    [mailer release];
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error 
{	
	switch (result)
	{
		case MFMailComposeResultCancelled:
			NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued");
			break;
		case MFMailComposeResultSaved:
			NSLog(@"Mail saved: you saved the email message in the Drafts folder");
			break;
		case MFMailComposeResultSent:
			NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send the next time the user connects to email");
			break;
		case MFMailComposeResultFailed:
			NSLog(@"Mail failed: the email message was nog saved or queued, possibly due to an error");
			break;
		default:
			NSLog(@"Mail not sent");
			break;
	}
    
	[self dismissModalViewControllerAnimated:YES];
}
-(IBAction)smsprsd
{
    
}
@end
