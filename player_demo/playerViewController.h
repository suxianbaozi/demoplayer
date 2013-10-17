//
//  playerViewController.h
//  player_demo
//
//  Created by reco on 13-10-17.
//  Copyright (c) 2013年 reco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface playerViewController : UIViewController
@property (strong,nonatomic) NSString *tile;
@property (strong,nonatomic) NSString *url;
@property (strong,nonatomic) IBOutlet UILabel *lable;


- (IBAction) pause:(id)sender;
- (IBAction) back:(id)sender;
- (NSString *) title;

- (void) setMusic:(NSString *)path ofTitle:(NSString *)name;
@end
