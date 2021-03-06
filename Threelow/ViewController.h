//
//  ViewController.h
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dice.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *diceOneImageView;

@property (weak, nonatomic) IBOutlet UIImageView *diceTwoImageView;

@property (weak, nonatomic) IBOutlet UIImageView *diceThreeImageView;

@property (weak, nonatomic) IBOutlet UIImageView *diceFourImageView;

@property (weak, nonatomic) IBOutlet UIImageView *diceFiveImageView;

@property (nonatomic, strong) NSMutableArray *holdArray;


- (IBAction)RollDiceButtonPressed:(UIButton *)sender;


- (IBAction)resetDiceButtonPressed:(UIButton *)sender;


- (IBAction)holdDiceOne:(UIButton *)sender;


- (IBAction)holdDiceTwo:(UIButton *)sender;


- (IBAction)holdDiceThree:(UIButton *)sender;


- (IBAction)holdDiceFour:(UIButton *)sender;


- (IBAction)holdDiceFive:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *displayScore;

@end

