//
//  AlertDemoViewController.m
//  CocoaPodsTest102015iProgEp1S2
//
//  Created by Nikolay Shubenkov on 24/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "AlertDemoViewController.h"

#import "SIAlertView.h"

@interface AlertDemoViewController ()

@end

@implementation AlertDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showMeAlert:(id)sender {
    SIAlertView *alert = [[SIAlertView alloc] initWithTitle:@"Привет!!!" andMessage:@"Это нестандартное всплывающее сообщение"];
    
    alert.backgroundColor = [UIColor whiteColor];
    alert.titleColor = [UIColor blackColor];
    
    alert.titleFont = [UIFont systemFontOfSize:24];
    
    alert.buttonColor = [UIColor purpleColor];
    alert.buttonFont = [UIFont systemFontOfSize:16];
    
    alert.cornerRadius = 5;
    alert.backgroundStyle = SIAlertViewBackgroundStyleSolid;
    
    
    [alert addButtonWithTitle:@"Ок" type:(SIAlertViewButtonTypeDefault) handler:^(SIAlertView *alertView) {
        NSLog(@"Нажали ок");
    }];
    
    [alert addButtonWithTitle:@"Отмена" type:SIAlertViewButtonTypeDefault handler:^(SIAlertView *alertView) {
        NSLog(@"Отмена, нееееет!!");
    }];
    
    [alert show];
}

@end
