//
//  TimeViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 09/11/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "TimeViewController.h"

@interface TimeViewController ()


@end

@implementation TimeViewController
@synthesize text;
@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)outerprsd
{
    [text resignFirstResponder];
}

-(IBAction) monprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double mont=[str doubleValue] ;
    double yr=mont/12;
    double week=yr*52.1;
    double decx=yr/10;
    NSString *resyr=[[NSString alloc] initWithFormat:@"%f",yr];
    NSString *reswee=[[NSString alloc] initWithFormat:@"%f",week];
    NSString *resdec=[[NSString alloc] initWithFormat:@"%f",decx];
    t1.text=str;
    t2.text=resyr;
    t3.text=reswee;
    t4.text=resdec;
}

-(IBAction) yrprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double yr=[str doubleValue] ;
    double mont=yr*12;
    double week=yr*52.1;
    double decx=yr/10;
    NSString *resmont=[[NSString alloc] initWithFormat:@"%f",mont];
    NSString *reswee=[[NSString alloc] initWithFormat:@"%f",week];
    NSString *resdec=[[NSString alloc] initWithFormat:@"%f",decx];
    t2.text=str;
    t1.text=resmont;
    t3.text=reswee;
    t4.text=resdec;
}

-(IBAction) weeprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double weex=[str doubleValue] ;
    double yr=weex/52.1;
    double mont=yr*12;
    double decx=yr/10;
    NSString *resyr=[[NSString alloc] initWithFormat:@"%f",yr];
    NSString *resmont=[[NSString alloc] initWithFormat:@"%f",mont];
    NSString *resdec=[[NSString alloc] initWithFormat:@"%f",decx];
    t3.text=str;
    t1.text=resmont;
    t2.text=resyr;
    t4.text=resdec;
}

-(IBAction) decprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double decx=[str doubleValue] ;
    double yr=decx*10;
    double week=yr*52.1;
    double monx=yr*12;
    NSString *resyr=[[NSString alloc] initWithFormat:@"%f",yr];
    NSString *reswee=[[NSString alloc] initWithFormat:@"%f",week];
    NSString *resmon=[[NSString alloc] initWithFormat:@"%f",monx];
    t4.text=str;
    t1.text=resmon;
    t2.text=resyr;
    t3.text=reswee;
}


@end
