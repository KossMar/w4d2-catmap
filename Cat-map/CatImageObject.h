//
//  CatImageObject.h
//  Cat-map
//
//  Created by Mar Koss on 2017-10-24.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CatImageObject : NSObject <MKAnnotation>


@property (nonatomic, strong) NSDictionary *imageInfo;

- (instancetype)initWithImageInfo:(NSDictionary*)info;

@property (strong, nonatomic) NSString *farm;
@property (strong, nonatomic) NSString *server;
@property (strong, nonatomic) NSString *catImageId;
@property (strong, nonatomic) NSString *secret;
@property (strong, nonatomic) NSString *catImageStr;
@property (strong, nonatomic) NSString *imageTitle;
@property (strong, nonatomic) NSString *catLocationStr;
@property(nonatomic) CLLocationCoordinate2D coordinate;



@end
