//
//  ViewController.h
//  Macchiato
//
//  Created by Jialue Huang on 1/24/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property BOOL isIdentityVerified;
@property UIStoryboardSegue* segue;

- (IBAction)loginButton:(id)sender;

@end

