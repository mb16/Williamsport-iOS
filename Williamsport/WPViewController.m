//
//  WPViewController.m
//  Williamsport
//
//  Created by Michael Brandt on 7/22/14.
//  Copyright (c) 2014 Williamsport Seventh-day Adventist Church. All rights reserved.
//

#import "WPViewController.h"

@interface WPViewController (){
    NSArray *buttonPhotos;
}

@end

@implementation WPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Initialize recipe image array
    buttonPhotos = [NSArray arrayWithObjects:@"icon_live.png",@"icon_audio.png",@"icon_contact.png",@"icon_bulletin.png", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return buttonPhotos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    UIImageView *buttonImageView = (UIImageView *)[cell viewWithTag:100];
    buttonImageView.image = [UIImage imageNamed:[buttonPhotos objectAtIndex:indexPath.row]];
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0){
        [self performSegueWithIdentifier:@"LiveStreamSegue" sender:self];
    }
    else if (indexPath.row == 2){
        [self performSegueWithIdentifier:@"ContactSegue" sender:self];
    }
    else if (indexPath.row == 3){
        [self performSegueWithIdentifier:@"BulletinSegue" sender:self];
    }
    else if (indexPath.row == 1){
        [self performSegueWithIdentifier:@"AudioSegue" sender:self];
    }
}

- (BOOL)shouldAutorotate
{
    return NO;
}

@end
