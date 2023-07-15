//
//  MeditorTimer.m
//  OCDemo
//
//  Created by wangjian on 20/6/2023.
//

#import "MeditorTimer.h"

@interface MeditorTimer()

@property (nonatomic, strong) NSTimer *timer;

@end

@implementation MeditorTimer {
    
//    NSTimer *_timer;
}

- (void)stopTimer{
    
    if (_timer == nil) {
        return;
    }
    [_timer invalidate];
    _timer = nil;
}


- (void)startTimer{
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(work) userInfo:nil repeats:YES];
}

- (void)work{
    
    NSLog(@"正在计时中。。。。。。second");
}

- (void)dealloc{
    
   NSLog(@"%s",__func__);
    [_timer invalidate];
    _timer = nil;
}

@end

