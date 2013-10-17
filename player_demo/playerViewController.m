//
//  playerViewController.m
//  player_demo
//
//  Created by reco on 13-10-17.
//  Copyright (c) 2013年 reco. All rights reserved.
//

#import "playerViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface playerViewController ()
@property (strong,nonatomic) AVAudioPlayer *player;
@end

@implementation playerViewController
@synthesize player;
@synthesize title;
@synthesize lable;


- (void)pause:(id)sender{
    [self.player pause];
}

- (void)back:(id)sender{
    [self.view removeFromSuperview];
}

- (NSString*)title{
    if([self.title isEqual:nil]) {
        self.title = @"播放器";
    }
    return self.title;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)setMusic:(NSString *)path ofTitle:(NSString *)name {
    NSError* err;
    NSString *music = [[NSBundle mainBundle] pathForResource:path ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:music];
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&err ];//使用本地URL创建
    [player prepareToPlay];
    [player play];
    self.lable.text = name;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    NSLog(@"我被触发了viewWillAppear");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
