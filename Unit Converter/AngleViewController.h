//
//  LengthViewController.h
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 14/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AngleViewController : UIViewController
{
    IBOutlet UIButton *rad;
    IBOutlet UIButton *deg;
    IBOutlet UIButton *min;
    IBOutlet UIButton *sec;
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

-(IBAction)radprsd;
-(IBAction)degprsd;
-(IBAction)minprsd;
-(IBAction)secprsd;
-(IBAction)outerprsd;
@end
