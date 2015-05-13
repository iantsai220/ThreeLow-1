//
//  ViewController.m
//  Threelow
//
//  Created by Ian Tsai on 2015-05-12.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic) Dice *dice1;

@property (nonatomic) Dice *dice2;

@property (nonatomic) Dice *dice3;

@property (nonatomic) Dice *dice4;

@property (nonatomic) Dice *dice5;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _dice1 = [Dice new];
    _dice2 = [Dice new];
    _dice3 = [Dice new];
    _dice4 = [Dice new];
    _dice5 = [Dice new];
    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RollDiceButtonPressed:(UIButton *)sender {
    
    self.diceOneImageView.image = [self.dice1 rollDiceButtonPressed];
    self.diceTwoImageView.image = [self.dice2 rollDiceButtonPressed];
    self.diceThreeImageView.image = [self.dice3 rollDiceButtonPressed];
    self.diceFourImageView.image = [self.dice4 rollDiceButtonPressed];
    self.diceFiveImageView.image = [self.dice5 rollDiceButtonPressed];
    
}

- (IBAction)resetDiceButtonPressed:(UIButton *)sender {
}
@end
