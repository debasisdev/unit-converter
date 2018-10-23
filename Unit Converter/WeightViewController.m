//
//  WeightViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 16/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "WeightViewController.h"

@interface WeightViewController ()

@end

@implementation WeightViewController
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

-(IBAction) pndprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double pnx=[str doubleValue] ;
    double gmx=pnx*453.592;
    double kgx=gmx/1000;
    double once=kgx*35.274;
    double carx=kgx*5000;
    NSString *resoun=[[NSString alloc] initWithFormat:@"%f",once];
    NSString *reskgx=[[NSString alloc] initWithFormat:@"%f",kgx];
    NSString *rescarx=[[NSString alloc] initWithFormat:@"%f",carx];
    NSString *resgmx=[[NSString alloc] initWithFormat:@"%f",gmx];
    t1.text=str;
    t2.text=resoun;
    t3.text=rescarx;
    t4.text=reskgx;
    t5.text=resgmx;
}

-(IBAction) ounprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double onx=[str doubleValue] ;
    double gmx=onx*28.34;
    double kgx=gmx/1000;
    double pndx=kgx*2.204625;
    double carx=kgx*5000;
    NSString *reskgx=[[NSString alloc] initWithFormat:@"%f",kgx];
    NSString *respndx=[[NSString alloc] initWithFormat:@"%f",pndx];
    NSString *rescarx=[[NSString alloc] initWithFormat:@"%f",carx];
    NSString *resgmx=[[NSString alloc] initWithFormat:@"%f",gmx];
    t2.text=str;
    t1.text=respndx;
    t3.text=rescarx;
    t4.text=reskgx;
    t5.text=resgmx;
}

-(IBAction) kgprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double kgx=[str doubleValue] ;
    double gmx=kgx*1000;
    double once=kgx*35.274;
    double pndx=kgx*2.204625;
    double carx=kgx*5000;
    NSString *resoun=[[NSString alloc] initWithFormat:@"%f",once];
    NSString *respndx=[[NSString alloc] initWithFormat:@"%f",pndx];
    NSString *rescarx=[[NSString alloc] initWithFormat:@"%f",carx];
    NSString *resgmx=[[NSString alloc] initWithFormat:@"%f",gmx];
    t4.text=str;
    t1.text=respndx;
    t2.text=resoun;
    t3.text=rescarx;
    t5.text=resgmx;
}

-(IBAction) carprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double carx=[str doubleValue] ;
    double kgx=carx*0.0002;
    double once=kgx*35.274;
    double pndx=kgx*2.204625;
    double gmx=carx*0.2;
    NSString *resoun=[[NSString alloc] initWithFormat:@"%f",once];
    NSString *respndx=[[NSString alloc] initWithFormat:@"%f",pndx];
    NSString *reskgx=[[NSString alloc] initWithFormat:@"%f",kgx];
    NSString *resgmx=[[NSString alloc] initWithFormat:@"%f",gmx];
    t3.text=str;
    t1.text=respndx;
    t2.text=resoun;
    t4.text=reskgx;
    t5.text=resgmx;
}

-(IBAction) gmprsd
{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",text.text];
    double gmx=[str doubleValue] ;
    double kgx=gmx/1000;
    double once=kgx*35.274;
    double pndx=kgx*2.204625;
    double carx=kgx*5000;
    NSString *resoun=[[NSString alloc] initWithFormat:@"%f",once];
    NSString *respndx=[[NSString alloc] initWithFormat:@"%f",pndx];
    NSString *rescarx=[[NSString alloc] initWithFormat:@"%f",carx];
    NSString *reskgx=[[NSString alloc] initWithFormat:@"%f",kgx];
    t5.text=str;
    t1.text=respndx;
    t2.text=resoun;
    t3.text=rescarx;
    t4.text=reskgx;
}

@end
