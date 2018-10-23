//
//  AreaViewController.h
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 16/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AreaViewController : UIViewController
{
    
    IBOutlet UIButton *mt;
    IBOutlet UIButton *ac;
    IBOutlet UIButton *ft;
    IBOutlet UIButton *yar;
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

-(IBAction)mtprsd;
-(IBAction)acprsd;
-(IBAction)ftprsd;
-(IBAction)yarprsd;
-(IBAction)outerprsd;

@end
