//
//  ViewController.h
//  player_demo
//
//  Created by reco on 13-10-17.
//  Copyright (c) 2013年 reco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate>
@property (strong,nonatomic) UITableView *list;
@property (strong,nonatomic) UIViewController *playerView;
- (IBAction) play:(id)sender;
@end
