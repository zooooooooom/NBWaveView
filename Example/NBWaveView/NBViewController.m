//
//  NBViewController.m
//  NBWaveView
//
//  Created by 260497176@qq.com on 10/20/2017.
//  Copyright (c) 2017 260497176@qq.com. All rights reserved.
//

#import "NBViewController.h"
#import "NBWaveView.h"

@interface NBViewController ()
@property(nonatomic, weak) NBWaveView *wave;
@end

@implementation NBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self top];
    
}

- (void)top
{
    NBWaveView *wave = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionBottom;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = YES;
        config.waveSpeed = 0.05;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.7];
        config.waveA = 5;
        config.imageOffsetY = 0;
        config.nbImage = [UIImage imageNamed:@"chuan"];
    }];
    
    self.wave = wave;
    wave.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave];
}


- (IBAction)switchChange:(UISwitch *)sender {
    
    if (sender.isOn) {
        [self.wave startWave];
    } else {
        [self.wave stopWave];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
