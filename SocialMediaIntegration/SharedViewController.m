//
//  SharedViewController.m
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import "SharedViewController.h"

@interface SharedViewController ()

@end

@implementation SharedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self styleConfigration];
    
    
}
-(void)styleConfigration{
    _shareBtn.layer.cornerRadius=10;
    _shareBtn.layer.borderWidth=2;
    //    _tweetBtn.layer.borderColor=[UIColor blueColor].CGColor;
    _shareText.layer.cornerRadius=7;
    _shareText.layer.borderWidth=2;
    _shareText.layer.borderColor=[UIColor blackColor].CGColor;
    _shareView.layer.cornerRadius=7;
    _shareView.layer.borderWidth=2;
    _shareView.layer.borderColor=[UIColor blackColor].CGColor;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sharing:(id)sender {
    
    UIActivityViewController *moreVC=[[UIActivityViewController alloc]initWithActivityItems:@[self.shareText.text]
                                                                      applicationActivities:
                                      nil];
    
    [self presentViewController:moreVC animated:YES completion:nil];
}
@end
