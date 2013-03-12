//
//  DeviceMasterVC.h
//  SK1-6
//
//  Created by Administrator on 3/12/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//
//This is a View Controller for DeviceMaster screen. It has a tableView in it so we need to set the 2 protocols accordingly.


#import <UIKit/UIKit.h>

@interface DeviceMasterVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *devices;
@property (strong, nonatomic) IBOutlet UITableView *deviceTableView;


@end
