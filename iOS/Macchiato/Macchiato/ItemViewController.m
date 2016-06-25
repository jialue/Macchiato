//
//  ItemViewController.m
//  Macchiato
//
//  Created by Jialue Huang on 3/6/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemviewController.h"

@implementation ItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    self.taskTable.dataSource = self;
    self.taskTable.delegate = self;
    self.taskTable.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background.png"]];
    tasks = delegate.tasks;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    didAddTaskNotification = @"didAddTaskNotification";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didAddTask:) name:didAddTaskNotification object:nil];
    [self startStandardUpdates];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startStandardUpdates {
    // Create the location manager if this object does not
    // already have one.
    if (nil == self.locationManager)
        self.locationManager = [[CLLocationManager alloc] init];
    if ([self.locationManager respondsToSelector:@selector(requestAlwaysAuthorization)])
    {
        [self.locationManager requestAlwaysAuthorization];
    }
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
    
    // Set a movement threshold for new events.
    self.locationManager.distanceFilter = 100; // meters
    
    [self.locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(nonnull NSArray<CLLocation *> *)locations {
//    NSLog(@"Location: %@\n", locations[0]);
}

- (void)locationManager:(CLLocationManager *)manager didEnterRegion:(nonnull CLRegion *)region {
    
}

// UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // If You have only one(1) section, return 1, otherwise you must handle sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
//    return [[self.tasks allKeys] count];
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"prototypeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
//    cell.textLabel.text = @"test";
    cell.textLabel.text = [tasks[indexPath.row] objectForKey:@"title"];
    cell.detailTextLabel.text = [tasks[indexPath.row] objectForKey:@"detail"];
    
    return cell;
}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self performSegueWithIdentifier:@"showTaskDetail" sender:self];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"showTaskDetail"])
    {
        //if you need to pass data to the next controller do it here
    }
}

- (void)didAddTask:(NSNotification*) notification {
    NSDictionary* task = notification.object;
    [tasks addObject:task];
    [self.taskTable reloadData];
}

@end