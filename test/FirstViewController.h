//
//  FirstViewController.h
//  test
//
//  Created by weiheng on 14-5-27.
//  Copyright (c) 2014年 weiheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *UItextView_Time;//和nib控件结合可以使用weak方式
- (IBAction)UIButton_update:(id)sender;
- (void)timerAction:(NSTimer*)timer;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Update;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Stop;
- (IBAction)UIButton_TouchUpInside:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *positionLabel;//不和nib控件结合，要使用strong方式
@end
