//
//  Persona.h
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject{
    NSString *pNombre;
    NSString *pEmail;
    NSString *pCedula;
    NSString *pTelefono;
    NSString *pEmpresa;
}

@property (strong, nonatomic) NSString *pNombre;
@property (strong, nonatomic) NSString *pEmail;
@property (strong, nonatomic) NSString *pCedula;
@property (strong, nonatomic) NSString *pTelefono;
@property (strong, nonatomic) NSString *pEmpresa;

- (id) iniciarConValores: (NSString *)nombre Cedula:(NSString *) cedula Email:(NSString *) email Telefono:(NSString *) telefono Empresa:(NSString *) empresa;

@end
