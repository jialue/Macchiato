//
//  TaskCreationViewController.m
//  Macchiato
//
//  Created by Jialue Huang on 3/26/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaskCreationViewController.h"
@implementation TaskCreationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Item" bundle:nil];
//    self = [storyboard instantiateViewControllerWithIdentifier:@"TaskCreationViewController"];
//    self.itemViewController = [storyboard instantiateViewControllerWithIdentifier:@"itemViewController"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CreateTask:(id)sender {
//    [self presentViewController:self.itemViewController animated:NO completion:nil];
    NSArray* taskKeys = [NSArray arrayWithObjects:@"title", @"detail", nil];
    NSArray* taskValues = [NSArray arrayWithObjects:self.taskTitle.text, self.taskDetail.text, nil];
//    NSArray* task = [NSArray arrayWithObjects:taskKeys, taskValues, nil];
    NSDictionary * task = [NSDictionary dictionaryWithObjects:taskValues forKeys:taskKeys];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"didAddTaskNotification" object:task];
    [self. navigationController popToRootViewControllerAnimated:YES];
//    NSDictionary* task = [NSDictionary dictionaryWithObjects:taskValues forKeys:taskKeys];

//    [self.itemViewController.tasks setObject:task forKey:iden];
//    [self.itemViewController.taskTable reloadData];
}

@end
