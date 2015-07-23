//
//  Programming_DemoViewController.h
//  custom_cell
//
//  Created by Sam on 27/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Programming_DemoViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

//@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;
@property(copy,nonatomic) NSArray *greekLetters;
@end
