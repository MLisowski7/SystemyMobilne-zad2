//
//  ViewController.m
//  zadanie2
//
//  Created by Virtual on 10/25/21.
//  Copyright © 2021 Virtual. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)enter{
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Mateusz";
    NSString *message;
    
    if ([yourName length]==0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    self.messageLabel.text = message;
    }

-(void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString*)item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.inputField2.text=item;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.inputField2.text;
        controller.delegate = self;
    }
}
@end
