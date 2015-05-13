//
//  Dice1.h
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiceFace1.h"
#import "DiceFace2.h"
#import "DiceFace3.h"
#import "DiceFace4.h"
#import "DiceFace5.h"
#import "DiceFace6.h"


@interface Dice : NSObject

@property (nonatomic) NSArray *diceOne;

//@property (nonatomic) NSArray *diceTwo;
//
//@property (nonatomic) NSArray *diceThree;
//
//@property (nonatomic) NSArray *diceFour;
//
//@property (nonatomic) NSArray *diceFive;


@property (nonatomic) int diceOneIndex;

//@property (nonatomic) int diceTwoIndex;
//
//@property (nonatomic) int diceThreeIndex;
//
//@property (nonatomic) int diceFourIndex;
//
//@property (nonatomic) int diceFiveIndex;

-(UIImage *)rollDiceButtonPressed;



@end
