//
//  MVViewController.m
//  NSLogs & IBActions
//
//  Created by Matthew Voss on 2/6/14.
//  Copyright (c) 2014 Matthew Voss. All rights reserved.
//

#import "MVViewController.h"

@interface MVViewController ()

@property (weak, nonatomic) IBOutlet UILabel *topLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonText;
@property (weak, nonatomic) IBOutlet UILabel *switchTextLabel;
@property (weak, nonatomic) IBOutlet UISwitch *bottomSwitch;
@property (weak, nonatomic) IBOutlet UISlider *topSlider;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;

@end


@implementation MVViewController

- (IBAction)pagebutton:(id)sender
{
    NSLog(@"Going to next page");
}

- (IBAction)goBackButoon:(id)sender
{
    NSLog(@"Going to first page");
    [self dismissViewControllerAnimated:YES completion:Nil];
}

- (IBAction)slideCapture:(id)sender
{
    if ([self.topSlider value] >= 65) {
        NSLog(@"The slider's value is above 65 its value is %.0f", self.topSlider.value);
    };
    NSString *newstring = [NSString stringWithFormat:@"%.0f", self.topSlider.value];
    [self.sliderValue setText:newstring];
}

- (IBAction)easySwitch:(id)sender
{
    if ([self.bottomSwitch isOn]) {
        [self.switchTextLabel setTextAlignment:NSTextAlignmentCenter];
        [self.switchTextLabel setText:@"The switch is ON"];
        NSLog(@"The switch is ON");
    } else  {
        [self.switchTextLabel setTextAlignment:NSTextAlignmentCenter];
        [self.switchTextLabel setText:@"The switch is OFF"];
        NSLog(@"The switch is OFF");
    }
}

- (IBAction)printToConsole:(id)sender
{
    NSString *logString;
    if ([self.topLabel.text isEqualToString:@"Label"]) {
        [self.buttonText setTitle:@"Change the label back" forState:(UIControlState)nil];
        [self.topLabel setText:@"Next Label"];
        [self.view setBackgroundColor:[UIColor whiteColor]];
        logString = @"You displayed the Next Label";
    } else {
        [self.buttonText setTitle:@"Change the label" forState:(UIControlState)nil];
        [self.topLabel setText:@"Label"];
        [self.view setBackgroundColor:[UIColor cyanColor]];
        logString = @"You displayed the label";
    }
    NSLog(@"%@",logString);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
