//
//  DetalleViewController.h
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import "Persona.h"


@interface DetalleViewController : UIViewController{
    Persona *personaActual;
}

@property (strong, nonatomic) Persona *personaActual;
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblEmail;
@property (strong, nonatomic) IBOutlet UILabel *lblCedula;
@property (strong, nonatomic) IBOutlet UILabel *lblTelefono;
@property (strong, nonatomic) IBOutlet UILabel *lblEmpresa;
- (IBAction)btnFb:(UIButton *)sender;
- (IBAction)btnTw:(UIButton *)sender;

@end
