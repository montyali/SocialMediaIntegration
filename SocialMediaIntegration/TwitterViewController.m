//
//  TwitterViewController.m
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import "TwitterViewController.h"
#import "Social/Social.h"

@interface TwitterViewController ()

@end

@implementation TwitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self styleConfigration];
  
}
-(void)styleConfigration{
    _tweetBtn.layer.cornerRadius=10;
    _tweetBtn.layer.borderWidth=2;
//    _tweetBtn.layer.borderColor=[UIColor blueColor].CGColor;
    _tweetText.layer.cornerRadius=7;
    _tweetText.layer.borderWidth=2;
    _tweetText.layer.borderColor=[UIColor blackColor].CGColor;
    _tweetView.layer.cornerRadius=7;
    _tweetView.layer.borderWidth=2;
    _tweetView.layer.borderColor=[UIColor blackColor].CGColor;
    
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

- (IBAction)tweeting:(id)sender {
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"sharedApp" message:@"send your tweet" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *tweet=[UIAlertAction actionWithTitle:@"tweet" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //check login into twitter or not?
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController *tweetCV=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            //check the number of character 140
            if ([self.tweetText.text length] < 140) {
                [tweetCV setInitialText:self.tweetText.text];
            }else{
                NSString *shorten=[self.tweetText.text substringToIndex:140 ];
                [tweetCV setInitialText:shorten];
            }
            [self presentViewController:tweetCV animated:YES completion:nil];
            
            
        }else{
            //you must sign in first [GO TO SETTING ]
            UIAlertController *alert2=[UIAlertController alertControllerWithTitle:@"sharedApp" message:@"you must sign in first" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
            [alert2 addAction:ok];
            [self presentViewController:alert2 animated:YES completion:nil];
        }
        
    }];
    [alert addAction:cancel];
    
    [alert addAction:tweet];
    [self presentViewController:alert animated:YES completion:nil ];
}
@end
