//
//  AreaViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 16/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "AreaViewController.h"

@interface AreaViewController ()

@end

@implementation AreaViewController
@synthesize text,t1,t2,t3,t4;

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

-(IBAction)outerprsd
{
    [text resignFirstResponder];
}

-(IBAction) mtprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double mtr=[str doubleValue] ;
    double acr=mtr*0.0002471;
    double fto=mtr*10.764;
    double yaro=mtr*1.196;
    NSString *acrx=[[NSString alloc] initWithFormat:@"%f",acr];
    NSString *ftx=[[NSString alloc] initWithFormat:@"%f",fto];
    NSString *yarx=[[NSString alloc] initWithFormat:@"%f",yaro];
    t1.text=str;
    t2.text=acrx;
    t3.text=ftx;
    t4.text=yarx;
}

-(IBAction) acprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double acr=[str doubleValue] ;
    double mtr=acr/0.0002471;
    double fto=mtr*10.764;
    double yaro=mtr*1.196;
    NSString *mtrx=[[NSString alloc] initWithFormat:@"%f",mtr];
    NSString *ftx=[[NSString alloc] initWithFormat:@"%f",fto];
    NSString *yarx=[[NSString alloc] initWithFormat:@"%f",yaro];
    t2.text=str;
    t1.text=mtrx;
    t3.text=ftx;
    t4.text=yarx;
}

-(IBAction) ftprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double fto=[str doubleValue] ;
    double mtr=fto/10.764;
    double acr=mtr*0.0002471;
    double yaro=mtr*1.196;
    NSString *acrx=[[NSString alloc] initWithFormat:@"%f",acr];
    NSString *mtx=[[NSString alloc] initWithFormat:@"%f",mtr];
    NSString *yarx=[[NSString alloc] initWithFormat:@"%f",yaro];
    t3.text=str;
    t1.text=mtx;
    t2.text=acrx;
    t4.text=yarx;
}

-(IBAction) yarprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double yarx=[str doubleValue] ;
    double mtrx=yarx/1.196;
    double fto=mtrx*10.764;
    double acr=mtrx*0.0002471;
    NSString *acrd=[[NSString alloc] initWithFormat:@"%f",acr];
    NSString *ftx=[[NSString alloc] initWithFormat:@"%f",fto];
    NSString *mtx=[[NSString alloc] initWithFormat:@"%f",mtrx];
    t4.text=str;
    t1.text=mtx;
    t2.text=acrd;
    t3.text=ftx;
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

@end
