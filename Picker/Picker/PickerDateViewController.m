//
//  PickerDateViewController.m
//  Picker
//
//  Created by Phinome on 2/13/15.
//  Copyright (c) 2015 Supertree. All rights reserved.
//

#import "PickerDateViewController.h"

@interface PickerDateViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation PickerDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonPressed:(id)sender {
    NSDate *selected = [self.datePicker date];
    NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is: %@", selected];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Date and Time Selected"
                          message:message
                          delegate:nil
                          cancelButtonTitle:@"That's so true!"
                          otherButtonTitles:nil];
    [alert show];
}

@end
