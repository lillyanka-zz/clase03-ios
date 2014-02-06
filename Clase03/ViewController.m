//
//  ViewController.m
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "ViewController.h"
#import "Persona.h"
#import "DetalleViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textNombre.delegate = self;
    self.textEmail.delegate = self;
    self.textCedula.delegate = self;
    self.textTelefono.delegate = self;
    self.textEmpresa.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textNombre resignFirstResponder];
    [self.textCedula resignFirstResponder];
    [self.textEmail resignFirstResponder];
    [self.textTelefono resignFirstResponder];
    [self.textEmpresa resignFirstResponder];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)btnSubmit:(id)sender {
    //Crear una nueva persona con los datos de los inputs
    //1. Importar la clase Persona.h
    //2. Crear objeto tipo persona
    //3. Invocar al método iniciarconValores:
    Persona *nuevaPersona = [[Persona alloc] iniciarConValores:self.textNombre.text Cedula:self.textCedula.text Email:self.textEmail.text Telefono:self.textTelefono.text Empresa:self.textEmpresa.text];
    
    //4. Imprimir (NSLog) los atributos
    //NSLog(@"Nombre: %@ \n Email: %@ \n Cedula: %@ \n Telefono: %@ \n Empresa: %@", nuevaPersona.pNombre, nuevaPersona.pEmail,nuevaPersona.pCedula, nuevaPersona.pTelefono, nuevaPersona.pEmpresa);
    
    //5. Importar clase DetalleViewController
    //6.Crear una instancia de DetalleViewController
    UIStoryboard *storyboard  = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetalleViewController *detalleView = [storyboard instantiateViewControllerWithIdentifier:@"Detalle"];
    //7. Crear el atributo personaActual
    detalleView.personaActual = nuevaPersona;
    //8. Hacer un push
    [self.navigationController pushViewController:detalleView animated:YES];
}
@end
