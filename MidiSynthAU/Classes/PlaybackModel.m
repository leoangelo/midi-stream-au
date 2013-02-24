//
//  PlaybackModel.m
//  MidiSynthAU
//
//  Created by Leo Angelo Quigao on 2/24/13.
//  Copyright (c) 2013 Leo Angelo Quigao. All rights reserved.
//

#import "PlaybackModel.h"

@interface PlaybackModel () {
	
	BOOL playing;
	BOOL recording;
	
}

@property (nonatomic, weak) id<PlaybackModelDelegate> delegate;

@end

@implementation PlaybackModel

- (id)initWithDelegate:(id<PlaybackModelDelegate>)theDelegate
{
	if (self = [super init]) {
		
		_delegate = theDelegate;
		
	}
	return self;
}

- (BOOL)isPlaying
{
	return playing;
}

- (BOOL)isRecording
{
	return recording;
}

- (void)togglePlayState
{
	playing = !playing;
	[self.delegate didChangePlaybackState];
}

- (void)toggleRecordState
{
	recording = !recording;
	[self.delegate didChangePlaybackState];
}

@end
