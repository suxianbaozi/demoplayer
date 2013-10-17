//
//  ViewController.m
//  player_demo
//
//  Created by reco on 13-10-17.
//  Copyright (c) 2013年 reco. All rights reserved.
//

#import "ViewController.h"
#import "playerViewController.h"

#import <AVFoundation/AVFoundation.h>
@interface ViewController ()
@property (strong,nonatomic) AVAudioPlayer *player;
@end

@implementation ViewController
@synthesize list;
@synthesize playerView;

- (void)play:(id)sender
{
    [self.playerView setMusic:@"heh" ofTitle:@"hehe"];
    [self.view addSubview:self.playerView.view];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.list = [[UITableView alloc] init];
    self.list.delegate = self;
    self.list.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:self.list];
    self.playerView = [[playerViewController alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
