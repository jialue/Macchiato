//
//  ItemViewController.h
//  Macchiato
//
//  Created by Jialue Huang on 2/28/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "AppDelegate.h"
@interface ItemViewController : UIViewController <CLLocationManagerDelegate, UITableViewDataSource, UITableViewDelegate> {
    NSString* didAddTaskNotification;
    NSMutableArray* tasks;
    AppDelegate* delegate;
}
@property CLLocationManager* locationManager;
//@property (weak, nonatomic) IBOutlet UIStackView *taskStack;

//@property NSMutableDictionary* tasks;
//@property NSMutableArray* tasks;
@property (weak, nonatomic) IBOutlet UITableView *taskTable;

// Task Creation
@property (weak, nonatomic) IBOutlet UITextField *taskTitle;
@property (weak, nonatomic) IBOutlet UITextField *taskDetail;



@end
