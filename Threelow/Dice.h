//
//  Dice1.h
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiceFace1.h"



@interface Dice : NSObject

@property (nonatomic) NSArray *dice;

//@property (nonatomic) NSArray *diceTwo;
//
//@property (nonatomic) NSArray *diceThree;
//
//@property (nonatomic) NSArray *diceFour;
//
//@property (nonatomic) NSArray *diceFive;


@property (nonatomic) int diceIndex;

//@property (nonatomic) int diceTwoIndex;
//
//@property (nonatomic) int diceThreeIndex;
//
//@property (nonatomic) int diceFourIndex;
//
//@property (nonatomic) int diceFiveIndex;

-(UIImage *)rollDiceButtonPressed;

-(NSUInteger)randomDice;

-(int)checkNumber:(int)number;

-(int)addNumber:(int)number1 add:(int)number2 add:(int)number3 add:(int)number4 add:(int)number5;




@end
