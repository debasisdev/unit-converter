//
//  LengthViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 02/11/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "LengthViewController.h"

@interface LengthViewController ()

@end

@implementation LengthViewController
@synthesize text;
@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;


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

-(IBAction) ftprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double ftx=[str doubleValue] ;
    double inx=ftx*12;
    double mtx=inx/39.37;
    double yarx=mtx*1.0936;
    double milx=mtx*0.0006;
    NSString *resin=[[NSString alloc] initWithFormat:@"%f",inx];
    NSString *resmt=[[NSString alloc] initWithFormat:@"%f",mtx];
    NSString *resyarx=[[NSString alloc] initWithFormat:@"%f",yarx];
    NSString *resmil=[[NSString alloc] initWithFormat:@"%f",milx];
    t1.text=str;
    t2.text=resin;
    t3.text=resmt;
    t4.text=resyarx;
    t5.text=resmil;
}

-(IBAction) incprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double inx=[str doubleValue] ;
    double ftx=inx/12;
    double mtx=inx/39.37;
    double yarx=mtx*1.0936;
    double milx=mtx*0.0006;
    NSString *resftx=[[NSString alloc] initWithFormat:@"%f",ftx];
    NSString *resmt=[[NSString alloc] initWithFormat:@"%f",mtx];
    NSString *resyarx=[[NSString alloc] initWithFormat:@"%f",yarx];
    NSString *resmil=[[NSString alloc] initWithFormat:@"%f",milx];
    t2.text=str;
    t1.text=resftx;
    t3.text=resmt;
    t4.text=resyarx;
    t5.text=resmil;
}

-(IBAction) metprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double metx=[str doubleValue] ;
    double inx=metx*39.37;
    double ftx=inx/12;
    double yarx=metx*1.0936;
    double milx=metx*0.0006;
    NSString *resin=[[NSString alloc] initWithFormat:@"%f",inx];
    NSString *resft=[[NSString alloc] initWithFormat:@"%f",ftx];
    NSString *resyarx=[[NSString alloc] initWithFormat:@"%f",yarx];
    NSString *resmil=[[NSString alloc] initWithFormat:@"%f",milx];
    t3.text=str;
    t1.text=resft;
    t2.text=resin;
    t4.text=resyarx;
    t5.text=resmil;
}

-(IBAction) yarprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double yarx=[str doubleValue] ;
    double mtx=yarx/1.0936;
    double inx=mtx*39.37;
    double ftx=inx/12;
    double milx=mtx*0.0006;
    NSString *resin=[[NSString alloc] initWithFormat:@"%f",inx];
    NSString *resmt=[[NSString alloc] initWithFormat:@"%f",mtx];
    NSString *resft=[[NSString alloc] initWithFormat:@"%f",ftx];
    NSString *resmil=[[NSString alloc] initWithFormat:@"%f",milx];
    t4.text=str;
    t1.text=resft;
    t2.text=resin;
    t3.text=resmt;
    t5.text=resmil;
}

-(IBAction) milprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double milx=[str doubleValue] ;
    double mtx=milx*0.0006;
    double inx=mtx*39.37;
    double yarx=mtx*1.0936;
    double ftx=inx/12;
    NSString *resin=[[NSString alloc] initWithFormat:@"%f",inx];
    NSString *resmt=[[NSString alloc] initWithFormat:@"%f",mtx];
    NSString *resyarx=[[NSString alloc] initWithFormat:@"%f",yarx];
    NSString *resft=[[NSString alloc] initWithFormat:@"%f",ftx];
    t5.text=str;
    t1.text=resft;
    t2.text=resin;
    t3.text=resmt;
    t4.text=resyarx;
}


@end
