//
//  SVNearbyVehicles.m
//  Hopper
//
//  Created by Pavel Tisunov on 27/10/13.
//  Copyright (c) 2013 Bright Stripe. All rights reserved.
//

#import "ICNearbyVehicles.h"
#import "ICVehiclePoint.h"

@implementation ICNearbyVehicles

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
        @"minEta": @"minEta",
        @"vehiclePoints": @"vehiclePoints"
    };
}

+ (NSValueTransformer *)vehiclePointsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:ICVehiclePoint.class];
}

-(BOOL)noVehicles {
    return _sorryMsg != nil;
}

@end