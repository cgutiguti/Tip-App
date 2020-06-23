//
//  ViewController.m
//  Tip App
//
//  Created by Carmen Gutierrez on 6/23/20.
//  Copyright © 2020 Carmen Gutierrez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;

@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}
- (IBAction)onEdit:(id)sender {
    double bill = [self.billField.text doubleValue];
    NSArray *percentages = @[@(0.15), @(0.2), @(0.25)];
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex]doubleValue];
    double tip = tipPercentage * bill;
    double total = bill + tip;
    self.tipLabel.text = [NSString stringWithFormat:@"%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f", total];
}

@end
