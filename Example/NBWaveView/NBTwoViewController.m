//
//  NBTwoViewController.m
//  NBWaveView_Example
//
//  Created by mac on 2017/10/20.
//  Copyright © 2017年 260497176@qq.com. All rights reserved.
//

#import "NBTwoViewController.h"
#import "NBWaveView.h"

@interface NBTwoViewController ()
@property(nonatomic, weak) NBWaveView *wave;
@end

@implementation NBTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self top];
    
    [self bottom];
    
}

- (void)top
{
    NBWaveView *wave = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionBottom;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = NO;
        config.waveSpeed = 0.05;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.5];
        config.waveA = 7;
        config.imageOffsetY = 0;
    }];
    
    self.wave = wave;
    wave.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave];
    
    NBWaveView *wave2 = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionBottom;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = NO;
        config.waveSpeed = 0.07;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.3];
        config.waveA = 6;
        config.imageOffsetY = 10;
    }];
    wave2.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave2];
    
    NBWaveView *wave5 = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionBottom;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = YES;
        config.waveSpeed = 0.03;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.7];
        config.waveA = 8;
        config.imageOffsetY = 0;
        config.nbImage = [UIImage imageNamed:@"chuan"];
    }];
    wave5.frame = CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave5];
}
- (void)bottom
{
    NBWaveView *wave3 = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionTop;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = NO;
        config.waveSpeed = 0.05;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.7];
        config.waveA = 8;
        config.imageOffsetY = 0;
        config.nbImage = [UIImage imageNamed:@"chuan"];
    }];
    
    
    wave3.frame = CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave3];
    
    NBWaveView *wave4 = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionTop;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = NO;
        config.waveSpeed = 0.07;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.3];
        config.waveA = 8;
        config.imageOffsetY = 0;
    }];
    wave4.frame = CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, 200);
    [self.view addSubview:wave4];
}


- (IBAction)switchChange:(UISwitch *)sender {
    
    if (sender.isOn) {
        [self.wave startWave];
    } else {
        [self.wave stopWave];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
