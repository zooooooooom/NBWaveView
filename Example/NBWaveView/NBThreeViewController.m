//
//  NBThreeViewController.m
//  NBWaveView_Example
//
//  Created by mac on 2017/10/20.
//  Copyright © 2017年 260497176@qq.com. All rights reserved.
//

#import "NBThreeViewController.h"
#import "NBWaveView.h"

@interface NBThreeViewController ()
@property(nonatomic, weak) NBWaveView *wave;
@end

@implementation NBThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NBWaveView *wave = [NBWaveView waveViewWithConfig:^(NBWaveConfig *config) {
        config.position = NBWavePositionBottom;
        config.bgColor = [UIColor clearColor];
        config.isAnimation = YES;
        config.isShowImage = NO;
        config.waveSpeed = 0.05;
        config.waveColor = [UIColor colorWithWhite:212/255.0 alpha:0.7];
        config.waveA = 5;
        config.imageOffsetY = 0;
        config.nbImage = [UIImage imageNamed:@"chuan"];
    }];
    
    self.wave = wave;
    wave.frame = CGRectMake(20, 200, 200, 200);
    [self.view addSubview:wave];
    
    wave.transform = CGAffineTransformMakeRotation(M_PI/2);
    
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
