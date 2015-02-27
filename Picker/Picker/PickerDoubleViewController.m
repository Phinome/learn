//
//  PickerDoubleViewController.m
//  Picker
//
//  Created by Phinome on 2/13/15.
//  Copyright (c) 2015 Supertree. All rights reserved.
//

#import "PickerDoubleViewController.h"

@interface PickerDoubleViewController ()

@property (nonatomic) NSArray *firstNames;
@property (nonatomic) NSArray *lastNames;

@property (weak, nonatomic) IBOutlet UIPickerView *doublePicker;



@end

@implementation PickerDoubleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.firstNames = @[@"Lee",@"ban",@"Chars",@"de"];
    self.lastNames = @[@"Green",@"Foo",@"Deen",@"Lu"];
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
    NSInteger firstRow = [self.doublePicker selectedRowInComponent:0];
    NSInteger lastRow = [self.doublePicker selectedRowInComponent:1];
    
    NSString *firstTitle = self.firstNames[firstRow];
    NSString *lastTitle = self.lastNames[lastRow];
    
    NSString *message = [[NSString alloc] initWithFormat:@"The First Name is %@ and The Last Name is %@", firstTitle, lastTitle];

    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"The Name"
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"Ye"
                                          otherButtonTitles:nil];
    
    [alert show];
}

#pragma mark doublePicker Data Source Methods;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == 0) {
        return [self.firstNames count];
    } else {
        return [self.lastNames count];
    }
}

#pragma mark doublePicker Delegate Methods;

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if(component == 0) {
        return self.firstNames[row];
    } else {
        return self.lastNames[row];
    }
}

@end
