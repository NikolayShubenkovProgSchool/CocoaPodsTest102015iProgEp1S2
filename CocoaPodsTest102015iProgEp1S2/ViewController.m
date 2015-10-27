//
//  ViewController.m
//  CocoaPodsTest102015iProgEp1S2
//
//  Created by Nikolay Shubenkov on 24/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "ViewController.h"

#import "MBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculate:(id)sender {
    [MBProgressHUD showHUDAddedTo:self.view
                         animated:YES];
    [self performSelector:@selector(hideHude)
               withObject:nil
               afterDelay:4];
}

- (void)hideHude {
    [MBProgressHUD hideHUDForView:self.view
                         animated:YES];
}

@end
