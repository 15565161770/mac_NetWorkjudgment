//
//  NetWorkJudge.m
//  NetWork
//
//  Created by 仝兴伟 on 2017/8/3.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "NetWorkJudge.h"
#import <CoreWLAN/CoreWLAN.h>
#include <SystemConfiguration/SystemConfiguration.h>

@implementation NetWorkJudge
- (NSString *)returnNetWorkJudge{
    NSString *pingHost = @"abc.apple.com";
    SCNetworkConnectionFlags flags = 0;
    if (pingHost && [pingHost length] > 0) {
        flags = 0;
        BOOL found = NO;
        SCNetworkReachabilityRef reachabilityRef = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [pingHost UTF8String]);
        if (reachabilityRef) {
            found = SCNetworkReachabilityGetFlags(reachabilityRef, &flags)
            &&  (flags & kSCNetworkFlagsReachable)
            && !(flags & kSCNetworkFlagsConnectionRequired);
            CFRelease(reachabilityRef);
            reachabilityRef = NULL;
        }
        if (found) {
            NSLog(@"Connection established");
            CWInterface* wifi = [[CWWiFiClient sharedWiFiClient] interface];
            NSLog(@"BSD if name: %@", wifi.interfaceName);
            NSLog(@"SSID: %@", wifi.ssid);
            NSLog(@"txRate: %f", wifi.transmitRate);

            if (wifi.ssid.length > 0) {
                return @"WIFI";
            } else{
               return @"本地网络";
            }
        }
        if (!found) {
            NSLog(@"Connection not established");
            return @"无网络";
        }
    }
     return @"无网络";
}

@end
