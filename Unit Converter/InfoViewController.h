//
//  InfoViewController.h
//  Unit Converter
//
//  Created by Lion User on 24/10/2012.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface InfoViewController : UIViewController 
        <MFMailComposeViewControllerDelegate>
{
    IBOutlet UIButton *mail;
    IBOutlet UIButton *sms;
    IBOutlet UILabel *rate;
}

@property (nonatomic,retain) IBOutlet UILabel *rate;

-(IBAction) mailprsd;
-(IBAction) smsprsd;
-(IBAction) sliderChanged:(id) sender;

@end
