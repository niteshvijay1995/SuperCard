//
//  ViewController.m
//  SuperCard
//
//  Created by nitesh.vi on 16/08/17.
//  Copyright © 2017 nitesh.vi. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@property (strong, nonatomic) Deck *deck;

@end

@implementation ViewController

- (Deck*)deck
{
    if(!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)drawRandomPlayingCard
{
    Card *card = [self.deck drawRandomCard];
    if([card isKindOfClass:[PlayingCard class]]){
        PlayingCard *playingCard = (PlayingCard *)card;
        self.playingCardView.rank = playingCard.rank;
        self.playingCardView.suit = playingCard.suit;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.playingCardView.suit = @"♠️";
    self.playingCardView.rank = 13;
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(pinch:)]];
    
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    if(!self.playingCardView.faceUp) [self drawRandomPlayingCard];
    self.playingCardView.faceUp = !self.playingCardView.faceUp;
}



@end
