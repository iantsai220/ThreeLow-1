//
//  DiceFace3.m
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "DiceFace3.h"

@implementation DiceFace3

-(instancetype)initWithImage: (UIImage *)image{
    self = [super init];
    if (self) {
        _diceFaceImage = image;
    }
    return self;
    
}


@end
