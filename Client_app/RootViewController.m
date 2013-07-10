//
//  RootViewController.m
//  Client_app
//
//  Created by Nikunj Jain on 02/07/13.
//  Copyright (c) 2013 Nikunj Jain. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)gofunction:(id)sender
{

        // Opens the Receiver app if installed, otherwise displays an error
        
    NSString *URLEncodedText=[NSString stringWithFormat:@"%@~%@",fnametxt.text,lnametxt.text];
    
    URLEncodedText = [URLEncodedText stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString *ourPath = [@"com.etranzact.serverapp://" stringByAppendingString:URLEncodedText];
        NSURL *ourURL = [NSURL URLWithString:ourPath];

    
    
   // @"com.etranzact.serverapp://"
    
    
    
     [[UIApplication sharedApplication] openURL:ourURL];
}

@end
