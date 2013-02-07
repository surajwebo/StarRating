//
//  ViewController.h
//  StarRating
//
//  Created by Suraj Mirajkar on 07/02/13.
//  Copyright (c) 2013 suraj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
}
@property (weak, nonatomic) IBOutlet UIView *viewForStarRating;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewStar1;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewStar2;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewStar3;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewStar4;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewStar5;
@property (nonatomic) CGPoint touchStartPoint;
@property (nonatomic) CGPoint touchCurrentPoint;
@property (weak, nonatomic) IBOutlet UIButton *btnForInfo;
@property (retain, nonatomic) UITapGestureRecognizer *tapgestureOnInfoView;
@property (strong, nonatomic) IBOutlet UIView *viewInfoPage;
@property (retain, nonatomic) UIView *customView;

- (IBAction)showInfo:(id)sender;
-(void)removeInfoViewFromScreen;

@end
