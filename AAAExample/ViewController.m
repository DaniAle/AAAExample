//
//  ViewController.m
//  AAAExample
//
//  Created by Daniela Velasquez on 26/06/13.
//  Copyright (c) 2013 Daniela Velasquez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)showAlert:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Título"
                                                    message:@"Mensaje del alert"
                                                   delegate:self
                                          cancelButtonTitle:@"Guardar"
                                          otherButtonTitles:@"Cancelar", nil];
    
    [alert show];
    
}

- (IBAction)showActionSheet:(id)sender {
    
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"¿Estas seguro de que deseas realizar la operación?"
                                  delegate:self
                                  cancelButtonTitle:@"Cancelar"
                                  destructiveButtonTitle:@"Aceptar"
                                  otherButtonTitles:@"Tal vez",nil];
    
    
  //  [actionSheet setTitle:@"Cambiando el título"];
    
    [actionSheet setActionSheetStyle:UIActionSheetStyleBlackOpaque];
    
    
    [actionSheet showInView:self.view];
    
}

#pragma mark AlertViewDelegate Methods
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (buttonIndex == 1) {
        NSLog(@"Cancelar");
    }else{
        NSLog(@"Guardar");
    }
    
}

#pragma mark Action Sheet Delegate Methods

-(void)actionSheet:(UIActionSheet *)actionSheet
clickedButtonAtIndex:(NSInteger)buttonIndex{
    
	if (buttonIndex == [actionSheet cancelButtonIndex]) {
        NSLog(@"Cancelar");
	}
    else if (buttonIndex == [actionSheet destructiveButtonIndex]){
        NSLog(@"Aceptar");
    }
    else{
        NSLog(@"Tal vez");
    }
    
    
}

@end
