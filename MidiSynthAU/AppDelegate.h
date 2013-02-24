//
//  AppDelegate.h
//  MidiSynthAU
//
//  Created by Leo Angelo Quigao on 2/24/13.
//  Copyright (c) 2013 Leo Angelo Quigao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PlaybackViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PlaybackViewController *viewController;

@end
