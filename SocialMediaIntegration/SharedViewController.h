//
//  SharedViewController.h
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SharedViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *shareText;
@property (weak, nonatomic) IBOutlet UIButton *shareBtn;
- (IBAction)sharing:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *shareView;

@end
