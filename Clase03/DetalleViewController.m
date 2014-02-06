//
//  DetalleViewController.m
//  Clase03
//
//  Created by supervisor on 2/5/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()

@end

@implementation DetalleViewController
@synthesize personaActual;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self cargarInformacion];
}

- (void)cargarInformacion{
    self.lblNombre.text = personaActual.pNombre;
    self.lblEmail.text = personaActual.pEmail;
    self.lblCedula.text = personaActual.pCedula;
    self.lblTelefono.text = personaActual.pTelefono;
    self.lblEmpresa.text = personaActual.pEmpresa;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnFb:(UIButton *)sender {
    //Creamos la instancia del controlador que publica a FB
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *facebookController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    //Publicamos a FB
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                NSLog(@"Acción Cancelada!");
            } else {
                NSLog(@"Exito");
            }
            [facebookController dismissViewControllerAnimated:YES completion:nil];
        };
        facebookController.completionHandler = myBlock;
        [facebookController setInitialText:@"Hola!"];
        [self presentViewController:facebookController animated:YES completion:nil];
    } else{
        NSLog(@"No puede postear a FB. Por favor inicie sesión.");
    }
    
}

- (IBAction)btnTw:(UIButton *)sender {
    //Creamos la instancia del controlador que publica a Twitter
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *twitterController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        //Publicamos a FB
        SLComposeViewControllerCompletionHandler myBlock = ^(SLComposeViewControllerResult result){
            if (result == SLComposeViewControllerResultCancelled) {
                NSLog(@"Acción Cancelada!");
            } else {
                NSLog(@"Exito");
            }
            [twitterController dismissViewControllerAnimated:YES completion:nil];
        };
        twitterController.completionHandler = myBlock;
        [twitterController setInitialText:@"Hola!"];
        [self presentViewController:twitterController animated:YES completion:nil];
    } else{
        NSLog(@"No puede postear a Twitter. Por favor inicie sesión.");
    }
}
@end
