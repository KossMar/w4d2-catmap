//
//  CatImageObject.m
//  Cat-map
//
//  Created by Mar Koss on 2017-10-24.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "CatImageObject.h"

@implementation CatImageObject

- (instancetype)initWithImageInfo:(NSDictionary*)info {
    self = [super init];
    if (self) {
        
        _farm = [info valueForKey:@"farm"];
        _server = [info valueForKey:@"server"];
        _catImageId = [info valueForKey:@"id"];
        _secret = [info valueForKey:@"secret"];
        _imageTitle = [info valueForKey:@"title"];
        _catImageStr = [NSString stringWithFormat:@"https://farm%@.staticflickr.com/%@/%@_%@.jpg", self.farm, self.server, self.catImageId, self.secret];
        _catLocationStr = [NSString stringWithFormat:@"https://api.flickr.com/services/rest/?method=flickr.photos.geo.getLocation&api_key=39019b76a9155a057a3cb897b59c21fb&photo_id=%@&format=json&nojsoncallback=1", self.catImageId];
    }
    return self;
}

@end
