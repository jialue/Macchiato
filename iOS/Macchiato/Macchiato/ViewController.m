//
//  ViewController.m
//  Macchiato
//
//  Created by Jialue Huang on 1/24/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    if (!strcmp(self.userName.text.UTF8String, "test") && !strcmp(self.passWord.text.UTF8String, "jialuehuang")) {
        
    }
    else {
//        [self show]
    }
}
@end

