//
//  ViewController.h
//  Maps
//
//  Created by Adriano Brugnoli on 17/04/14.
//  Copyright (c) 2014 BRA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController  <MKMapViewDelegate>
{
    IBOutlet MKMapView *MapView;
    
    IBOutlet UISwitch * SwitchZoom;
    
    IBOutlet  UISegmentedControl *TipoMappa;
    
}

-(IBAction)Zoom:(id)sender;

-(IBAction)MiaPosizione:(id)sender;

-(IBAction)CambiaTipoMappa:(id)sender;

-(void)Posizione;




@end
