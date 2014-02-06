//
//  ViewController.h
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textNombre;
@property (strong, nonatomic) IBOutlet UITextField *textEmail;
@property (strong, nonatomic) IBOutlet UITextField *textCedula;
@property (strong, nonatomic) IBOutlet UITextField *textTelefono;
@property (strong, nonatomic) IBOutlet UITextField *textEmpresa;
- (IBAction)btnSubmit:(id)sender;



@end
