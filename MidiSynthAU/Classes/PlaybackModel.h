//
//  PlaybackModel.h
//  MidiSynthAU
//
//  Created by Leo Angelo Quigao on 2/24/13.
//  Copyright (c) 2013 Leo Angelo Quigao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlaybackModelDelegate <NSObject>

- (void)didChangePlaybackState;

@end

@interface PlaybackModel : NSObject

- (id)initWithDelegate:(id<PlaybackModelDelegate>)theDelegate;

- (BOOL)isPlaying;
- (BOOL)isRecording;

- (void)togglePlayState;
- (void)toggleRecordState;

@end
