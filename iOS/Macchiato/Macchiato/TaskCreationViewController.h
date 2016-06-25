//
//  UIViewController_TaskCreationViewController.h
//  Macchiato
//
//  Created by Jialue Huang on 3/26/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemViewController.h"
@interface TaskCreationViewController: UIViewController

@property (weak, nonatomic) IBOutlet UITextField *taskTitle;
@property (weak, nonatomic) IBOutlet UITextField *taskDetail;
@property ItemViewController* itemViewController;
@end
