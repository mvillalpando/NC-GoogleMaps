//
//  Description.h
//  Navigation Controller
//
//  Created by Mariela Villalpando on 7/1/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Maps.h"

@interface DescriptionCity : UIViewController
@property NSString *dTitles;
@property NSString *dDescriptions;
@property NSString *dPhotos;
@property double coorLatitude;
@property double coorLongitude;


@property (strong, nonatomic) IBOutlet UILabel *lblDescription;
@property (strong, nonatomic) IBOutlet UILabel *lblCity;
@property (strong, nonatomic) IBOutlet UIImageView *imgDescription;
@property (weak, nonatomic) IBOutlet UIButton *btnMaps;

- (IBAction)btnMapsPressed:(id)sender;
@end
