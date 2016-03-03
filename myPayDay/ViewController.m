//
//  ViewController.m
//  myPayDay
//
//  Created by DWAYNE MITCHELL on 27/07/2015.
//  Copyright © 2015 dwayne. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _rateOffPayTextField.clearsOnBeginEditing = true;
    _hoursWorkedTextField.clearsOnBeginEditing = true;
    _overtimeTextField.clearsOnBeginEditing = true;
    _bonusTextField.clearsOnBeginEditing = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateButtonPress:(id)sender {
    
    
    
    float rateOffPay = [self.rateOffPayTextField.text floatValue];
    
    float hoursWorked = [self.hoursWorkedTextField.text floatValue];
    
    float overtime = [self.overtimeTextField.text floatValue];
    
    float bonus = [self.bonusTextField.text floatValue];
    
    
    float grossPay;
    grossPay = rateOffPay * hoursWorked;
    
    float overtineRate;
    overtineRate = overtime * rateOffPay + 2.0;
    
    float total;
    total = grossPay + bonus + overtineRate;
    
    float percentage;
    percentage = total * .19;
    
    float takeHome;
    takeHome = total - percentage;
    
    self.myPayTotalTextField.text = [NSString stringWithFormat: @"£%.f",takeHome];
   
}
@end
