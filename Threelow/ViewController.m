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

@property (nonatomic) UIButton *holdDiceOne;

@property (nonatomic) UIButton *holdDiceTwo;

@property (nonatomic) UIButton *holdDiceThree;

@property (nonatomic) UIButton *holdDiceFour;

@property (nonatomic) UIButton *holdDiceFive;

@property (nonatomic) int count;

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
    
    NSNull *nullValue = [NSNull null];
    _holdArray = [[NSMutableArray alloc] initWithObjects: nullValue,
                                                          nullValue,
                                                          nullValue,
                                                          nullValue,
                                                          nullValue, nil];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RollDiceButtonPressed:(UIButton *)sender {
    
    //add
    
    if ([self.holdArray containsObject:self.holdDiceOne] == NO) {
        self.diceOneImageView.image = [self.dice1 rollDiceButtonPressed];
    
    }
    
    if ([self.holdArray containsObject:self.holdDiceTwo] == NO) {
        self.diceTwoImageView.image = [self.dice2 rollDiceButtonPressed];

    }
    
    if ([self.holdArray containsObject:self.holdDiceThree] == NO) {
        self.diceThreeImageView.image = [self.dice3 rollDiceButtonPressed];

    }
    
    if ([self.holdArray containsObject:self.holdDiceFour] == NO) {
        self.diceFourImageView.image = [self.dice4 rollDiceButtonPressed];

    }
    
    if ([self.holdArray containsObject:self.holdDiceFive] == NO) {
         self.diceFiveImageView.image = [self.dice5 rollDiceButtonPressed];

    }
    
    int number1 = [self.dice1 checkNumber:self.dice1.diceIndex];
    int number2 = [self.dice2 checkNumber:self.dice2.diceIndex];
    int number3 = [self.dice3 checkNumber:self.dice3.diceIndex];
    int number4 = [self.dice4 checkNumber:self.dice4.diceIndex];
    int number5 = [self.dice5 checkNumber:self.dice5.diceIndex];
    
    self.count = [self.dice1 addNumber:number1 add:number2 add:number3 add:number4 add:number5];
  
    self.displayScore.text = [NSString stringWithFormat:@"%d", self.count];
    
    //everytime random is pressed
    //generate a new set of total
        //if held, number dont change
        //

    
    
    
}

- (IBAction)resetDiceButtonPressed:(UIButton *)sender {
    
    [self.holdArray removeAllObjects];
    
    for (int i = 0; i < 6; i++) {
        [self.holdArray insertObject:[NSNull null] atIndex:i];
    }
    
    [self.holdDiceOne setBackgroundColor:[UIColor whiteColor]];
    [self.holdDiceTwo setBackgroundColor:[UIColor whiteColor]];
    [self.holdDiceThree setBackgroundColor:[UIColor whiteColor]];
    [self.holdDiceFour setBackgroundColor:[UIColor whiteColor]];
    [self.holdDiceFive setBackgroundColor:[UIColor whiteColor]];
 
}

- (IBAction)holdDiceOne:(UIButton *)sender {
    
    self.holdDiceOne = sender;
    
    if ([self hold:self.holdDiceOne atIndex:0] == YES){
        [self.holdDiceOne setBackgroundColor:[UIColor redColor]];
        
    }
    else {
        [self.holdDiceOne setBackgroundColor:[UIColor whiteColor]];
    }
    
}

- (IBAction)holdDiceTwo:(UIButton *)sender {
    
    self.holdDiceTwo = sender;
    
    if ([self hold:self.holdDiceTwo atIndex:1] == YES){
        [self.holdDiceTwo setBackgroundColor:[UIColor redColor]];
    }
    else {
        [self.holdDiceTwo setBackgroundColor:[UIColor whiteColor]];
    }
    
}

- (IBAction)holdDiceThree:(UIButton *)sender {
    
    self.holdDiceThree = sender;
    
    if ([self hold:self.holdDiceThree atIndex:2] == YES){
        [self.holdDiceThree setBackgroundColor:[UIColor redColor]];
    }
    else {
        [self.holdDiceThree setBackgroundColor:[UIColor whiteColor]];
    }
    
}

- (IBAction)holdDiceFour:(UIButton *)sender {
    
    self.holdDiceFour = sender;
    
    if ([self hold:self.holdDiceFour atIndex:3] == YES){
        [self.holdDiceFour setBackgroundColor:[UIColor redColor]];
    }
    else {
        [self.holdDiceFour setBackgroundColor:[UIColor whiteColor]];
    }
    
}

- (IBAction)holdDiceFive:(UIButton *)sender {
    
    self.holdDiceFive = sender;
    
    if ([self hold:self.holdDiceFive atIndex:4] == YES){
        [self.holdDiceFive setBackgroundColor:[UIColor redColor]];
    }
    else {
        [self.holdDiceFive setBackgroundColor:[UIColor whiteColor]];
    }
    
}

-(BOOL)hold:(UIButton *)button atIndex:(int)index{
    
    if ([self.holdArray containsObject:button]) {
        [self.holdArray removeObject:button];
        NSLog(@"removed at %d", index);
        return NO;
        
    }
    else {
        [self.holdArray insertObject:button atIndex:index];
        NSLog(@"hold at %d", index);
        return YES;
    }
}











@end
