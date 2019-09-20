//
//  ViewController.m
//  Category
//
//  Created by soda on 2019/9/20.
//  Copyright © 2019 123. All rights reserved.
//

#import "ViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>
@interface ViewController ()

@property (nonatomic,strong) IJKFFMoviePlayerController *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if DEBUG
    //  设置报告日志
    [IJKFFMoviePlayerController setLogReport:YES];
    //  设置日志的级别为Debug
    [IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_DEBUG];
#else
    //  设置报告日志
    [IJKFFMoviePlayerController setLogReport:NO];
    //  设置日志的级别为Debug
    [IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_DEBUG];
#endif
    
    [IJKFFMoviePlayerController checkIfFFmpegVersionMatch:YES];
    
    // IJKFFOptions 是对视频的配置信息
    IJKFFOptions *options = [IJKFFOptions optionsByDefault];
    
    [options setOptionIntValue:15 forKey:@"max-fps" ofCategory:kIJKFFOptionCategoryPlayer];
    
    //地址：
    // http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear2/prog_index.m3u8
    // rtmp://live.hkstv.hk.lxdns.com/live/hks
    // rtsp://184.72.239.149/vod/mp4://BigBuckBunny_175k.mov
    
    
    //NSURL *url = [NSURL URLWithString:@"rtsp://184.72.239.149/vod/mp4://BigBuckBunny_175k.mov"];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"video.ts" ofType:nil];
    NSURL *url = [NSURL fileURLWithPath:path];
    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:options];
    
    self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    // 控制视频填充模式
    self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
    
    self.player.view.frame = self.view.bounds;
    
    self.player.shouldAutoplay = YES;
    
    self.view.autoresizesSubviews = YES;
    
    [self.view addSubview:self.player.view];
    
    [self.player prepareToPlay];
    [self.player play];
    
}


@end
