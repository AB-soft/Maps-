//
//  ViewController.m
//  Maps
//
//  Created by Adriano Brugnoli on 17/04/14.
//  Copyright (c) 2014 BRA. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

-(IBAction)Zoom:(id)sender
{
    if (SwitchZoom.on)
        {
            MapView.zoomEnabled = TRUE;
            
            UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Zoom ON" message:@"Your zoom switch is enabled" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            
            [alert1 show];
        }
        else
        {
            MapView.zoomEnabled = false;
            
            UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Zoom OFF" message:@"Your zoom switch is disabled" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            
            [alert2 show];
            
            
        }
    }


-(void)Posizione
{
        MapView.showsUserLocation = YES;
    
}
-(IBAction)MiaPosizione:(id)sender

{
    MapView.showsUserLocation = YES;
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.3, 0.3);
    MKCoordinateRegion region = MKCoordinateRegionMake(MapView.userLocation.coordinate, span);
    [MapView setRegion:region animated:YES];
}

-(IBAction)CambiaTipoMappa:(id)sender
{
    
    if ([TipoMappa selectedSegmentIndex] == 0)
        
    {
        MapView.mapType = MKMapTypeStandard;
    }
    else if ([TipoMappa selectedSegmentIndex ] == 1)
    {
        MapView.mapType = MKMapTypeSatellite;
    }
    else
    {
        MapView.mapType = MKMapTypeHybrid;
    }
}

#pragma mark iAd Delegate methods


-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    
    [banner setAlpha:1];
    
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    
    [banner setAlpha:0];
    
    [UIView commitAnimations];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self Posizione];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
