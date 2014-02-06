//
//  Persona.m
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "Persona.h"

@implementation Persona

@synthesize pNombre, pEmail, pCedula, pTelefono, pEmpresa;

- (id) iniciarConValores: (NSString *)nombre Cedula:(NSString *) cedula Email:(NSString *) email Telefono:(NSString *) telefono Empresa:(NSString *) empresa{
    if (self == [super init]){
        pNombre = nombre;
        pCedula = cedula;
        pEmail = email;
        pTelefono = telefono;
        pEmpresa = empresa;
        
    }
    return self;
}



@end
