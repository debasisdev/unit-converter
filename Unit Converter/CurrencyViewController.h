//
//  CurrencyViewController.h
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 23/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrencyViewController : UIViewController <NSXMLParserDelegate, NSURLConnectionDelegate>
{
    IBOutlet UITextField *txtAmount;
    IBOutlet UIButton *usd;
    IBOutlet UIButton *eur;
    IBOutlet UIButton *gbp;
    IBOutlet UIButton *jpy;
    IBOutlet UIButton *aed;
    IBOutlet UIButton *out;
    IBOutlet UILabel *lb;
    NSMutableData *webData;
    NSURLConnection *conn;
    NSString *matchingElement;
    NSMutableString *soapResults;
    NSXMLParser *xmlParser;
    IBOutlet UIActivityIndicatorView *act;
    BOOL elementFound;
}

@property (nonatomic, retain) UITextField *txtAmount;
@property(nonatomic,retain)  UIActivityIndicatorView * act;

-(IBAction) usdclcked;
-(IBAction) eurclcked;
-(IBAction) gbpclcked;
-(IBAction) jpyclcked;
-(IBAction) aedclcked;
-(IBAction) outerprsd;
@end
