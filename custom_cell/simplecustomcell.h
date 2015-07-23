//
//  simplecustomcell.h
//  custom_cell
//
//  Created by Sam on 27/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface simplecustomcell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
//@property(copy,nonatomic) NSArray *greekLetters;
@end
