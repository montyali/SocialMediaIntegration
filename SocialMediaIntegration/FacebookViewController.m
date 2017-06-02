//
//  FacebookViewController.m
//  SocialMediaIntegration
//
//  Created by Admin on 6/2/17.
//  Copyright © 2017 mona. All rights reserved.
//

#import "FacebookViewController.h"
#import "Social/Social.h"

@interface FacebookViewController ()

@end

@implementation FacebookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self styleConfigration];
    
  
}
-(void)styleConfigration{
    _postBtn.layer.cornerRadius=10;
    _postBtn.layer.borderWidth=2;
    //    _tweetBtn.layer.borderColor=[UIColor blueColor].CGColor;
    _postText.layer.cornerRadius=7;
    _postText.layer.borderWidth=2;
    _postText.layer.borderColor=[UIColor blackColor].CGColor;
    _faceView.layer.cornerRadius=7;
    _faceView.layer.borderWidth=2;
    _faceView.layer.borderColor=[UIColor blackColor].CGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)posting:(id)sender {
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"sharedApp" message:@"send your post" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel=[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *post=[UIAlertAction actionWithTitle:@"post" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //check login into fb or not?
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController *postCV=[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            
            [self presentViewController:postCV animated:YES completion:nil];
            
            
        }else{
            //you must sign in first [GO TO SETTING ]
            UIAlertController *alert2=[UIAlertController alertControllerWithTitle:@"sharedApp" message:@"you must sign in first" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *ok=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
            [alert2 addAction:ok];
            [self presentViewController:alert2 animated:YES completion:nil];
        }
        
    }];
    
//    UIAlertAction *more=[UIAlertAction actionWithTitle:@"more" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        UIActivityViewController *moreVC=[[UIActivityViewController alloc]initWithActivityItems:@[self.postText.text]
//            applicationActivities:
//                                          nil];
//        
//            [self presentViewController:moreVC animated:YES completion:nil];
//        }
//        
//    ];
// 
    
    [alert addAction:post];
//    [alert addAction:more];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil ];

}
@end
