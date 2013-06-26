//
//  ViewController.h
//  AAAExample
//
//  Created by Daniela Velasquez on 26/06/13.
//  Copyright (c) 2013 Daniela Velasquez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UIActionSheetDelegate, UIAlertViewDelegate>

- (IBAction)showAlert:(id)sender;
- (IBAction)showActionSheet:(id)sender;

@end
