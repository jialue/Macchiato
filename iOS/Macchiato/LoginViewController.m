//
//  ViewController.m
//  Macchiato
//
//  Created by Jialue Huang on 1/24/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.isIdentityVerified = false;
    self.segue = [[UIStoryboardSegue alloc] initWithIdentifier:@"segueToMain1" source:self destination:[self.storyboard instantiateViewControllerWithIdentifier:@"main"]];
//    [self prepareForSegue:self.segue sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://localhost/~air/test.php?user=0&format=json"];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                // handle response
                if (data.length > 0 && error == nil)
                {
                    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                                         options:0
                                                                           error:NULL];
                    NSDictionary* userInfo = [[json objectForKey:@"posts"] objectAtIndex:0];
                    if ([[userInfo objectForKey:@"username"] isEqualToString:self.username.text] && [[userInfo objectForKey:@"password"] isEqualToString:self.password.text]) {
                        printf("verified!\n");
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^ {
                            [self performSegueWithIdentifier:@"segueLoginToMain" sender:self];
                        }];
                    }
                }
            }] resume];
//    if (self.isIdentityVerified) {
//        [self performSegueWithIdentifier:@"segueLoginToMain" sender:self];
//    }
}


- (void)proceedToMainView {
    
}

@end

