//
//  MainViewController.h
//  Macchiato
//
//  Created by Jialue Huang on 2/28/16.
//  Copyright © 2016 Jialue Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MainViewController : UIViewController <CLLocationManagerDelegate>
@property CLLocationManager* locationManager;
@end
