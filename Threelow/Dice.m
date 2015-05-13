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
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace1.png"]],
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace2.png"]],
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace3.png"]],
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace4.jpg"]],
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace5.png"]],
                     [[DiceFace1 alloc]initWithImage:[UIImage imageNamed:@"diceFace6.png"]],
                     
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
    
    
    DiceFace1 *randomDiceFace = [self.dice objectAtIndex:[self randomDice]];
    
    
    return randomDiceFace.diceFaceImage;
}

-(NSUInteger)randomDice {
    
    self.diceOneIndex = arc4random_uniform(6);
    
    return self.diceOneIndex;
    
}

















@end
