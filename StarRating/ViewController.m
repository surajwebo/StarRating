//
//  ViewController.m
//  StarRating
//
//  Created by Suraj Mirajkar on 07/02/13.
//  Copyright (c) 2013 suraj. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.touchStartPoint = [touch locationInView:self.viewForStarRating];
    //NSLog(@"Touch detected at: x = %f and y = %f",self.touchStartPoint.x,self.touchStartPoint.y);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.touchCurrentPoint = [touch locationInView:self.viewForStarRating];
    
    //NSLog(@"Touch is currently at: x = %f and y = %f",self.touchCurrentPoint.x,self.touchCurrentPoint.y);
    int leftSpace = 20;
    if (self.touchCurrentPoint.x <= leftSpace + 5) {
        [self.imgViewStar1 setImage:[UIImage imageNamed:@"StarEmpty.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace + 15 && self.touchCurrentPoint.x <= leftSpace + 25) {
        [self.imgViewStar1 setImage:[UIImage imageNamed:@"StarHalf.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace + 35) {
        [self.imgViewStar1 setImage:[UIImage imageNamed:@"StarFull.png"]];
    }
    
    int leftSpace1 = 70;
    if (self.touchCurrentPoint.x <= leftSpace1 + 5) {
        [self.imgViewStar2 setImage:[UIImage imageNamed:@"StarEmpty.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace1 + 15 && self.touchCurrentPoint.x <= leftSpace1 + 25) {
        [self.imgViewStar2 setImage:[UIImage imageNamed:@"StarHalf.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace1 + 35) {
        [self.imgViewStar2 setImage:[UIImage imageNamed:@"StarFull.png"]];
    }
    
    int leftSpace2 = 120;
    if (self.touchCurrentPoint.x <= leftSpace2 + 5) {
        [self.imgViewStar3 setImage:[UIImage imageNamed:@"StarEmpty.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace2 + 15 && self.touchCurrentPoint.x <= leftSpace2 + 25) {
        [self.imgViewStar3 setImage:[UIImage imageNamed:@"StarHalf.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace2 + 35) {
        [self.imgViewStar3 setImage:[UIImage imageNamed:@"StarFull.png"]];
    }
    
    int leftSpace3 = 170;
    if (self.touchCurrentPoint.x <= leftSpace3 + 5) {
        [self.imgViewStar4 setImage:[UIImage imageNamed:@"StarEmpty.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace3 + 15 && self.touchCurrentPoint.x <= leftSpace3 + 25) {
        [self.imgViewStar4 setImage:[UIImage imageNamed:@"StarHalf.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace3 + 35) {
        [self.imgViewStar4 setImage:[UIImage imageNamed:@"StarFull.png"]];
    }
    
    int leftSpace4 = 220;
    if (self.touchCurrentPoint.x <= leftSpace4 + 5) {
        [self.imgViewStar5 setImage:[UIImage imageNamed:@"StarEmpty.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace4 + 15 && self.touchCurrentPoint.x <= leftSpace4 + 25) {
        [self.imgViewStar5 setImage:[UIImage imageNamed:@"StarHalf.png"]];
    } else if (self.touchCurrentPoint.x >= leftSpace4 + 35) {
        [self.imgViewStar5 setImage:[UIImage imageNamed:@"StarFull.png"]];
    }
}

- (IBAction)showInfo:(id)sender {
    
    self.customView = [[UIView alloc] initWithFrame:CGRectMake(35, 160, 248, 185)];
    self.customView.alpha = 0.0;
    self.customView.layer.cornerRadius = 5;
    self.customView.layer.borderWidth = 1.5f;
    self.customView.layer.masksToBounds = YES;
    
    [self.customView addSubview:self.viewInfoPage];
    [self.view addSubview:self.customView];
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.4];
    [self.customView setAlpha:1.0];
    [UIView commitAnimations];
    [UIView setAnimationDuration:0.0];
    self.customView.userInteractionEnabled = YES;
    
    self.tapgestureOnInfoView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeInfoViewFromScreen)];
    [self.viewInfoPage addGestureRecognizer: self.tapgestureOnInfoView];
}

-(void)removeInfoViewFromScreen {
    [self.customView removeFromSuperview];
    [self.view removeGestureRecognizer: self.tapgestureOnInfoView];
}
@end
