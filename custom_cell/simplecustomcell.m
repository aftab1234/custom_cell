//
//  simplecustomcell.m
//  custom_cell
//
//  Created by Sam on 27/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "simplecustomcell.h"

//#import "Programming_DemoViewController.h"

@implementation simplecustomcell
@synthesize thumbnailImageView=_thumbnailImageView;
@synthesize nameLabel=_nameLabel;
@synthesize prepTimeLabel=_prepTimeLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        //self.thumbnailImageView.frame = CGRectMake(0,0,32,32);
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [self.greekLetters count];
//}

//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [self.greekLetters count];
//}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *simpleTableIdentifier = @"simplecustomcell";
//    
//    simplecustomcell *cell = (simplecustomcell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    if (cell == nil)
//    {
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"Simplecustomcell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
//    }
//    
//    cell.nameLabel.text = [cell objectAtIndex:indexPath.row];
//    //cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
//    
//    return cell;
//}

@end
