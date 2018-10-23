//
//  CurrencyViewController.m
//  Unit Converter
//
//  Created by iMAC-LAB-19 on 23/10/12.
//  Copyright (c) 2012 DevSoft Corp. All rights reserved.
//

#import "CurrencyViewController.h"

@interface CurrencyViewController ()

@end

@implementation CurrencyViewController
@synthesize txtAmount,act;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lb.text=@"INR : Indian Rupees (\u20B9)";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)outerprsd
{
    [txtAmount resignFirstResponder];
}

- (IBAction) usdclcked
{
    matchingElement = @"double";
    NSURL *url =
    [NSURL URLWithString:
     [NSString stringWithFormat:@"http://www.webservicex.net/currencyconvertor.asmx/ConversionRate?FromCurrency=%@&ToCurrency=%@",@"USD",@"INR"]];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = @"0";
    
    [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [req addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [req setHTTPMethod:@"GET"];
    conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    if (conn)
    {
        webData = [[NSMutableData data] retain];
    }
    [act startAnimating];
}

- (IBAction) aedclcked
{
    matchingElement = @"double";
    NSURL *url =
    [NSURL URLWithString:
     [NSString stringWithFormat:@"http://www.webservicex.net/currencyconvertor.asmx/ConversionRate?FromCurrency=%@&ToCurrency=%@",@"AED",@"INR"]];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = @"0";
    
    [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [req addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [req setHTTPMethod:@"GET"];
    conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    if (conn)
    {
        webData = [[NSMutableData data] retain];
    }
    [act startAnimating];
}

- (IBAction) gbpclcked
{
    matchingElement = @"double";
    NSURL *url =
    [NSURL URLWithString:
     [NSString stringWithFormat:@"http://www.webservicex.net/currencyconvertor.asmx/ConversionRate?FromCurrency=%@&ToCurrency=%@",@"GBP",@"INR"]];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = @"0";
    
    [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [req addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [req setHTTPMethod:@"GET"];
    conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    if (conn)
    {
        webData = [[NSMutableData data] retain];
    }
    [act startAnimating];
}

- (IBAction) eurclcked
{
    matchingElement = @"double";
    NSURL *url =
    [NSURL URLWithString:
     [NSString stringWithFormat:@"http://www.webservicex.net/currencyconvertor.asmx/ConversionRate?FromCurrency=%@&ToCurrency=%@",@"EUR",@"INR"]];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = @"0";
    
    [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [req addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [req setHTTPMethod:@"GET"];
    conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    if (conn)
    {
        webData = [[NSMutableData data] retain];
    }
    [act startAnimating];
}

- (IBAction) jpyclcked
{
    matchingElement = @"double";
    NSURL *url =
    [NSURL URLWithString:
     [NSString stringWithFormat:@"http://www.webservicex.net/currencyconvertor.asmx/ConversionRate?FromCurrency=%@&ToCurrency=%@",@"JPY",@"INR"]];
    NSMutableURLRequest *req = [NSMutableURLRequest requestWithURL:url];
    NSString *msgLength = @"0";
    
    [req addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
    [req addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [req setHTTPMethod:@"GET"];
    conn = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    if (conn)
    {
        webData = [[NSMutableData data] retain];
    }
    [act startAnimating];
}

-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *) response
{
    [webData setLength: 0];
}

-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *) data
{
    [webData appendData:data];
}

-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *) error
{
    [conn release];
    [webData release];
}

-(void) connectionDidFinishLoading:(NSURLConnection *) connection
{
    [conn release];
    NSLog(@"DONE. Received Bytes: %d", [webData length]);
    NSString *theXML = [[NSString alloc] initWithBytes:[webData mutableBytes]
                                                length:[webData length]
                                              encoding:NSUTF8StringEncoding];
    NSLog(@"%@", theXML);
    [theXML release];
    if (xmlParser)
    {
        [xmlParser release];
    }
    xmlParser = [[NSXMLParser alloc] initWithData: webData];
    [xmlParser setDelegate: self];
    [xmlParser setShouldResolveExternalEntities: YES];
    [xmlParser parse];
    [webData release];
}

-(void)  parser:(NSXMLParser *) parser
didStartElement:(NSString *) elementName
   namespaceURI:(NSString *) namespaceURI
  qualifiedName:(NSString *) qName
     attributes:(NSDictionary *) attributeDict
{
    
    if ([elementName isEqualToString:matchingElement])
    {
        if (!soapResults)
        {
            soapResults = [[NSMutableString alloc] init];
        }
        elementFound = YES;
    }
}

-(void)parser:(NSXMLParser *) parser foundCharacters:(NSString *)string
{
    if (elementFound)
    {
        [soapResults appendString: string];
    }
}

-(void)parser:(NSXMLParser *)parser
didEndElement:(NSString *)elementName
 namespaceURI:(NSString *)namespaceURI
qualifiedName:(NSString *)qName
{
    
    if ([elementName isEqualToString:matchingElement])
    {
        NSLog(@"%@", soapResults);
        [act stopAnimating];
        float conversionRate = [soapResults floatValue];
        float result = [txtAmount.text floatValue] * conversionRate;
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result"
                                                        message:[NSString stringWithFormat:@"Converted Amount is   \u20B9 %.2f", result]
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        [alert release];
        elementFound = FALSE;
        [xmlParser abortParsing];
    }
}

- (void)parserDidEndDocument:(NSXMLParser *)parser
{
    if (soapResults)
    {
        [soapResults release];
        soapResults = nil;
    }
}

- (void)    parser:(NSXMLParser *)parser parseErrorOccurred:(NSError *)parseError
{
    if (soapResults)
    {
        [soapResults release];
        soapResults = nil;
    }
}

- (void)dealloc
{
    if (xmlParser)
    {
        [xmlParser release];
    }
    if (soapResults)
    {
        [soapResults release];
    }
    [txtAmount release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

@end
