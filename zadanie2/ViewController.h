//
//  ViewController.h
//  zadanie2
//
//  Created by Virtual on 10/25/21.
//  Copyright © 2021 Virtual. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;

@property (nonatomic, weak) IBOutlet UITextField *inputField2;

-(IBAction)enter;
@end

