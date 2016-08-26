//
//  Description.m
//  Navigation Controller
//
//  Created by Mariela Villalpando on 7/1/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import "DescriptionCity.h"

@interface DescriptionCity ()

@end

@implementation DescriptionCity

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblCity.text          = self.dTitles;
    self.lblDescription.text    = self.dDescriptions;
    self.imgDescription.image   = [UIImage imageNamed:self.dPhotos];
    
    self.lblDescription.numberOfLines = 0;
    [self.lblDescription sizeToFit];

    if([self.dTitles isEqual: @"Guadalajara"]) {
        self.coorLatitude = 20.672172;
        self.coorLongitude = -103.346402;
    }
    else if ([self.dTitles isEqual: @"San Sebastian del Oeste"]){
        self.coorLatitude = 20.761646;
        self.coorLongitude = -104.852538;
    }
    else if ([self.dTitles isEqual: @"Zapopan"]){
        self.coorLatitude = 20.728201;
        self.coorLongitude = -103.393684;
    }
    else if ([self.dTitles isEqual: @"Tequila"]){
        self.coorLatitude = 20.880471;
        self.coorLongitude = -103.831462;
    }
    
    else if ([self.dTitles isEqual: @"Tapalpa"]){
        self.coorLatitude = 19.945272;
        self.coorLongitude = -103.757042;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnMapsPressed:(id)sender {
    [self performSegueWithIdentifier:@"Maps" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[Maps class]]) {
        Maps *destinationState     = [segue destinationViewController];
        destinationState.locationLatitude   = self.coorLatitude;
        destinationState.locationLongitude  = self.coorLongitude;
        
    }
}
    
@end
