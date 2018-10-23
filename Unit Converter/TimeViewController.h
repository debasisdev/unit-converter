//
//  TimeViewController.h
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 09/11/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeViewController : UIViewController
{
    IBOutlet UIButton *mon;
    IBOutlet UIButton *wee;
    IBOutlet UIButton *year;
    IBOutlet UIButton *dec;
    IBOutlet UIButton *outer;
    IBOutlet UITextField *text;
    IBOutlet UITextField *t1;
    IBOutlet UITextField *t2;
    IBOutlet UITextField *t3;
    IBOutlet UITextField *t4;
    
}

@property (nonatomic, retain) UITextField *text;
@property (nonatomic, retain) UITextField *t1;
@property (nonatomic, retain) UITextField *t2;
@property (nonatomic, retain) UITextField *t3;
@property (nonatomic, retain) UITextField *t4;

-(IBAction)monprsd;
-(IBAction)weeprsd;
-(IBAction)yrprsd;
-(IBAction)decprsd;
-(IBAction)outerprsd;

@end
