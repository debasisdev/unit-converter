//
//  LengthViewController.h
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 02/11/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LengthViewController : UIViewController
{
    IBOutlet UIButton *ft;
    IBOutlet UIButton *inc;
    IBOutlet UIButton *met;
    IBOutlet UIButton *yar;
    IBOutlet UIButton *mil;
    IBOutlet UIButton *outer;
    IBOutlet UITextField *text;
    IBOutlet UITextField *t1;
    IBOutlet UITextField *t2;
    IBOutlet UITextField *t3;
    IBOutlet UITextField *t4;
    IBOutlet UITextField *t5;
}

@property (nonatomic, retain) UITextField *text;
@property (nonatomic, retain) UITextField *t1;
@property (nonatomic, retain) UITextField *t2;
@property (nonatomic, retain) UITextField *t3;
@property (nonatomic, retain) UITextField *t4;
@property (nonatomic, retain) UITextField *t5;

-(IBAction)ftprsd;
-(IBAction)incprsd;
-(IBAction)metprsd;
-(IBAction)yarprsd;
-(IBAction)milprsd;
-(IBAction)outerprsd;

@end
