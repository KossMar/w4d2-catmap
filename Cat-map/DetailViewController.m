//
//  DetailViewController.m
//  Cat-map
//
//  Created by Mar Koss on 2017-10-24.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
     [self configureView];
}



- (void)setCatImageObject:(CatImageObject *)catImageObject {
    if (_catImageObject != catImageObject) {
        _catImageObject = catImageObject;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {

    self.navigationItem.title = self.catImageObject.imageTitle;
    MKCoordinateSpan span = MKCoordinateSpanMake(.5f, .5f);
    self.mapView.region = MKCoordinateRegionMake(self.photo.coordinate, span);

    
}








@end
