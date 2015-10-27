//
//  LeftMenuTableViewController.m
//  CocoaPodsTest102015iProgEp1S2
//
//  Created by Nikolay Shubenkov on 24/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "LeftMenuTableViewController.h"

#import "RESideMenu.h"

@implementation LeftMenuTableViewController

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath  {
    if (indexPath.row == 0){
        [self showBlackVC];
    }
    if (indexPath.row == 1){
        [self showOrangeVC];
    }
    [self.sideMenuViewController hideMenuViewController];
}

- (void)showBlackVC {
    RESideMenu *menu = self.sideMenuViewController;
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"BlackVC"];
    [menu setContentViewController:controller animated:YES];
}

- (void)showOrangeVC {
    RESideMenu *menu = self.sideMenuViewController;
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"Center"];
    [menu setContentViewController:controller animated:YES];
}

@end
