//
//  ViewController.h
//  Macchiato
//
//  Created by Jialue Huang on 1/24/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
- (IBAction)loginButton:(id)sender;

@end

