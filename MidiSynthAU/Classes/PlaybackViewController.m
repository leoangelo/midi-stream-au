//
//  PlaybackViewController.m
//  MidiSynthAU
//
//  Created by Leo Angelo Quigao on 2/24/13.
//  Copyright (c) 2013 Leo Angelo Quigao. All rights reserved.
//

#import "PlaybackViewController.h"
#import "PlaybackModel.h"

@interface PlaybackViewController () <PlaybackModelDelegate>

@property (nonatomic, strong) PlaybackModel *playbackModel;
@property (nonatomic, weak) IBOutlet UIButton *playButton;
@property (nonatomic, weak) IBOutlet UIButton *recordButton;

- (void)updatePlaybackButtons;
- (IBAction)didPressButton:(id)sender;

@end

@implementation PlaybackViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		
		self.playbackModel = [[PlaybackModel alloc] initWithDelegate:self];
		
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self updatePlaybackButtons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updatePlaybackButtons
{
	UIImage *playImg = [UIImage imageNamed:[self.playbackModel isPlaying] ? @"pause.png" : @"play.png"];
	UIImage *recordImg = [UIImage imageNamed:[self.playbackModel isRecording] ? @"stop.png" : @"record.png"];
	
	UIImage *playImgHl = [UIImage imageNamed:[self.playbackModel isPlaying] ? @"pause-hl.png" : @"play-hl.png"];
	UIImage *recordImgHl = [UIImage imageNamed:[self.playbackModel isRecording] ? @"stop-hl.png" : @"record-hl.png"];
	
	[self.playButton setImage:playImg forState:UIControlStateNormal];
	[self.recordButton setImage:recordImg forState:UIControlStateNormal];
	
	[self.playButton setImage:playImgHl forState:UIControlStateHighlighted];
	[self.recordButton setImage:recordImgHl forState:UIControlStateHighlighted];
}

- (void)didPressButton:(id)sender
{
	if (sender == self.playButton) {
		[self.playbackModel togglePlayState];
	}
	else if (sender == self.recordButton) {
		[self.playbackModel toggleRecordState];
	}
}

- (void)didChangePlaybackState
{
	[self updatePlaybackButtons];
}

@end
