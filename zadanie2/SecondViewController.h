//
//  SecondViewController.h
//  zadanie2
//
//  Created by Virtual on 10/26/21.
//  Copyright © 2021 Virtual. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

-(void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;
@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;

@property NSString *surname;
@property UIButton *backButton;

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

-(IBAction)PassBack;
@end
