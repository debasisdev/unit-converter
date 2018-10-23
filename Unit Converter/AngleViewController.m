//
//  LengthViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 14/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "AngleViewController.h"

@interface AngleViewController ()

@end

@implementation AngleViewController
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

-(IBAction) radprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double rado=[str doubleValue] ;
    double degs=rado*57.2958;
    double mins=degs*60;
    double secu=mins*60;
    NSString *resdeg=[[NSString alloc] initWithFormat:@"%f",degs];
    NSString *resmin=[[NSString alloc] initWithFormat:@"%f",mins];
    NSString *ressecs=[[NSString alloc] initWithFormat:@"%f",secu];
    t1.text=str;
    t2.text=resdeg;
    t3.text=resmin;
    t4.text=ressecs;
}

-(IBAction) degprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double dego=[str doubleValue] ;
    double rads=dego*0.0175;
    double mins=dego*60;
    double secu=mins*60;
    NSString *resrads=[[NSString alloc] initWithFormat:@"%f",rads];
    NSString *resmins=[[NSString alloc] initWithFormat:@"%f",mins];
    NSString *ressecs=[[NSString alloc] initWithFormat:@"%f",secu];
    t2.text=str;
    t1.text=resrads;
    t3.text=resmins;
    t4.text=ressecs;
}

-(IBAction) minprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double minu=[str doubleValue] ;
    double rads=minu*0.0003;
    double degs=minu*0.0167;
    double secu=minu*60;
    NSString *resrad=[[NSString alloc] initWithFormat:@"%f",rads];
    NSString *resdeg=[[NSString alloc] initWithFormat:@"%f",degs];
    NSString *ressec=[[NSString alloc] initWithFormat:@"%f",secu];
    t3.text=str;
    t1.text=resrad;
    t2.text=resdeg;
    t4.text=ressec;
}

-(IBAction) secprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double seco=[str doubleValue] ;
    double minu=seco/60;
    double degs=minu*0.0167;
    double rads=minu*0.0003;
    NSString *resrad=[[NSString alloc] initWithFormat:@"%f",rads];
    NSString *resdeg=[[NSString alloc] initWithFormat:@"%f",degs];
    NSString *resmins=[[NSString alloc] initWithFormat:@"%f",minu];
    t4.text=str;
    t1.text=resrad;
    t2.text=resdeg;
    t3.text=resmins;
}


@end
