//
//  FacebookViewController.h
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FacebookViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *faceView;
@property (weak, nonatomic) IBOutlet UITextView *postText;
@property (weak, nonatomic) IBOutlet UIButton *postBtn;
- (IBAction)posting:(id)sender;

@end
