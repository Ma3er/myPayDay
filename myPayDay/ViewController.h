//
//  ViewController.h
//  myPayDay
//
//  Created by DWAYNE MITCHELL on 27/07/2015.
//  Copyright © 2015 dwayne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *rateOffPayTextField;

@property (strong, nonatomic) IBOutlet UITextField *myPayTotalTextField;
@property (strong, nonatomic) IBOutlet UITextField *hoursWorkedTextField;
@property (strong, nonatomic) IBOutlet UITextField *overtimeTextField;
@property (strong, nonatomic) IBOutlet UITextField *bonusTextField;
- (IBAction)calculateButtonPress:(id)sender;

@end

