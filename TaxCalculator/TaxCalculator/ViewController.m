//
//  ViewController.m
//  TaxCalculator
//
//  Created by Michelle Burke on 8/31/15.
//  Copyright (c) 2015 BurkeMedia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect frame= self.segmentedControl.frame;
    [self.segmentedControl setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 100)];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
}

- (IBAction)onCalculateButtonTapped:(id)sender
{
    NSString *enteredText = self.textField.text;
    double enteredValue = enteredText.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else
    {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
}

@end