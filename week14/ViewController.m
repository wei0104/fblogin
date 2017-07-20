//
//  ViewController.m
//  week14
//
//  Created by Wei Luo on 12/8/16.
//  Copyright © 2016 Wei Luo. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    // Optional: Place the button in the center of your view.
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];

    NSArray *images = [NSArray arrayWithObjects:@"iphone1.jpeg",@"iphone2.jpeg",@"iphone3.jpeg",@"iphone4.jpeg",@"iphone5.jpeg",@"iphone6.jpeg",nil];
    
    UIScrollView *scrollView  = [[UIScrollView alloc] init];
    scrollView.pagingEnabled = YES;
    scrollView.frame = CGRectMake(0, 100, self.view.bounds.size.width-50*2, 150);
    scrollView.backgroundColor = [UIColor yellowColor];
    scrollView.layer.borderColor = [UIColor whiteColor].CGColor;
    scrollView.layer.borderWidth = 7;
    scrollView.layer.cornerRadius = 10;
    
    for(int i=0; i<[images count]; i++){
        UIImageView *photo = [[UIImageView alloc] init];
        
//      photo.frame = scrollView.bounds;
        photo.frame = CGRectMake((i)*scrollView.bounds.size.width, 0, scrollView.bounds.size.width, 200);
        photo.clipsToBounds = YES;
        photo.backgroundColor = [UIColor blueColor];
        photo.image = [UIImage imageNamed:images[i]];
        
        photo.contentMode = UIViewContentModeScaleAspectFit;
        
        [scrollView addSubview:photo];
    }
    
    [scrollView setContentSize:CGSizeMake(self.view.bounds.size.width*[images count], 100)];
    
    [self.view addSubview:scrollView];
    
    self.view.backgroundColor = [UIColor colorWithRed:230/255.0 green:230/255.0 blue:230/255.0 alpha:1.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
