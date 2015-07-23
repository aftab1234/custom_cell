//
//  Programming_DemoViewController.m
//  custom_cell
//
//  Created by Sam on 27/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "Programming_DemoViewController.h"
#import "simplecustomcell.h"

@interface Programming_DemoViewController ()

@end

@implementation Programming_DemoViewController
//@synthesize greekLetters;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.greekLetters =@[@"Alpha",@"Beta",@"Gamma",@"Delta",@"Epsilon",@"Zeta",@"Eta",@"Theta",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P"];
    //NSLog(@"%@",self.greekLetters);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.greekLetters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"simplecustomcell";
    
  
    simplecustomcell *cell = (simplecustomcell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell==nil)
    { 
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"simplecustomcell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
        
       cell = [[simplecustomcell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
        
//        [tableView registerNib:[UINib nibWithNibName:@"simplecustomcell" bundle:nil] forCellReuseIdentifier:simpleTableIdentifier];
//        cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    }
    UIImage *image1 = [UIImage imageNamed:@"delhi1.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"jaipur1.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"kolkata1.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"mumbai1.jpg"];
    UIImage *image5 = [UIImage imageNamed:@"lucknow1.jpg"];
 
    
    //cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
    cell.thumbnailImageView.frame=CGRectMake(0,0,50,50);
    //cell.thumbnailImageView.image = image1;
    if (indexPath.row < 6) {
         cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
        cell.prepTimeLabel.text =@"first 5";
        
        cell.thumbnailImageView.image= image1;
        
    }
    else if((indexPath.row >= 6)&&(indexPath.row <= 10)){
         cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
        cell.prepTimeLabel.text =@"first 10";
        
        cell.thumbnailImageView.image = image2;
        
    }
    else if((indexPath.row >= 11)&&(indexPath.row <= 15)){
         cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
        cell.prepTimeLabel.text =@"Mid 5";
        
        cell.thumbnailImageView.image=image3;
        
        
        
    }
    else if((indexPath.row >= 16)&&(indexPath.row <= 20)){
         cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
        cell.prepTimeLabel.text =@"last 10";
        
        cell.thumbnailImageView.image = image4;
        
    }
    else {
         cell.nameLabel.text = [self.greekLetters objectAtIndex:indexPath.row];
        cell.prepTimeLabel.text =@"last 6";
        
        cell.thumbnailImageView.image = image5;
        
    }
    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}
//-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    cell.nameLabel.text = self.greekLetters[indexPath.row];
//    
//}

@end
