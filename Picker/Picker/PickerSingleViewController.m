//
//  PickerSingleViewController.m
//  Picker
//
//  Created by Phinome on 2/13/15.
//  Copyright (c) 2015 Supertree. All rights reserved.
//

#import "PickerSingleViewController.h"

@interface PickerSingleViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (nonatomic) NSArray *characterName;

@end

@implementation PickerSingleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.characterName = @[@"Luke", @"Leia", @"Han", @"Chewbacca", @"Artoo", @"Threepio", @"Lando"];
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
    NSInteger row = [self.singlePicker selectedRowInComponent:0];
    NSString *selected = self.characterName[row];
    NSString *title = [[NSString alloc] initWithFormat:@"You Selected %@", selected];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:title
                          message:@"Thank you for you choosing"
                          delegate:nil
                          cancelButtonTitle:@"You're Welcome!"
                          otherButtonTitles:nil];
    [alert show];
}

#pragma mark
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.characterName count];
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.characterName[row];
}

@end
