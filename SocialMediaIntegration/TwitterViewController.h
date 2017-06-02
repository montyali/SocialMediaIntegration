//
//  TwitterViewController.h
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwitterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *tweetText;
@property (weak, nonatomic) IBOutlet UIButton *tweetBtn;
- (IBAction)tweeting:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *tweetView;

@end
