//
//  Dice1.m
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(instancetype)init {
    self = [super init];
    if (self) {
        _diceOne = @[
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace1.png"]],
                     [[DiceFace2 alloc]initWithImage:[UIImage imageNamed:@"diceFace2.png"]],
                     [[DiceFace3 alloc]initWithImage:[UIImage imageNamed:@"diceFace3.png"]],
                     [[DiceFace4 alloc]initWithImage:[UIImage imageNamed:@"diceFace4.png"]],
                     [[DiceFace5 alloc]initWithImage:[UIImage imageNamed:@"diceFace5.png"]],
                     [[DiceFace6 alloc]initWithImage:[UIImage imageNamed:@"diceFace6.png"]],
                     
                     ];
        
//        _diceTwo = @[
//                     [UIImage imageNamed:@"diceFace1.png"],
//                     [UIImage imageNamed:@"diceFace2.png"],
//                     [UIImage imageNamed:@"diceFace3.png"],
//                     [UIImage imageNamed:@"diceFace4.png"],
//                     [UIImage imageNamed:@"diceFace5.png"],
//                     [UIImage imageNamed:@"diceFace6.png"],
//                     ];
//        
//        _diceThree = @[
//                     [UIImage imageNamed:@"diceFace1.png"],
//                     [UIImage imageNamed:@"diceFace2.png"],
//                     [UIImage imageNamed:@"diceFace3.png"],
//                     [UIImage imageNamed:@"diceFace4.png"],
//                     [UIImage imageNamed:@"diceFace5.png"],
//                     [UIImage imageNamed:@"diceFace6.png"],
//                     ];
//        
//        _diceFour = @[
//                       [UIImage imageNamed:@"diceFace1.png"],
//                       [UIImage imageNamed:@"diceFace2.png"],
//                       [UIImage imageNamed:@"diceFace3.png"],
//                       [UIImage imageNamed:@"diceFace4.png"],
//                       [UIImage imageNamed:@"diceFace5.png"],
//                       [UIImage imageNamed:@"diceFace6.png"],
//                       ];
//        
//        _diceFive = @[
//                      [UIImage imageNamed:@"diceFace1.png"],
//                      [UIImage imageNamed:@"diceFace2.png"],
//                      [UIImage imageNamed:@"diceFace3.png"],
//                      [UIImage imageNamed:@"diceFace4.png"],
//                      [UIImage imageNamed:@"diceFace5.png"],
//                      [UIImage imageNamed:@"diceFace6.png"],
//                      ];
        
    }
    
    return self;
}


-(UIImage *)rollDiceButtonPressed {
    
    int r = arc4random_uniform(6);
    [self.diceOne objectAtIndex:r]//fixxxxx maybe image should all be in one class
    
    
    return [self.diceOne objectAtIndex:r];
}

















@end
