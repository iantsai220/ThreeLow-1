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
        _dice = @[
                     [UIImage imageNamed:@"diceFace1.png"],
                     [UIImage imageNamed:@"diceFace2.png"],
                     [UIImage imageNamed:@"diceFace3.png"],
                     [UIImage imageNamed:@"diceFace4.jpg"],
                     [UIImage imageNamed:@"diceFace5.png"],
                     [UIImage imageNamed:@"diceFace6.png"],
                     
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
    
    
    return [self.dice objectAtIndex:[self randomDice]];
}

-(NSUInteger)randomDice {
    
    self.diceIndex = arc4random_uniform(5);
    
    return self.diceIndex;
    
}

















@end
