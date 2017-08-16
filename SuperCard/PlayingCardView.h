 //
//  PlayingCardView.h
//  SuperCard
//
//  Created by nitesh.vi on 16/08/17.
//  Copyright © 2017 nitesh.vi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;
@end
