//
//  ViewController.m
//  NetWork
//
//  Created by 仝兴伟 on 2017/8/3.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkJudge.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*
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
        }
        if (!found) {
            NSLog(@"Connection not established");
        }
    }
     */
    
    
//    CWInterface * interface = [[CWInterface alloc]init];
//    NSArray *arrays = [interface interfaceName];
//    
//    
//    for (interfaceName in arrays) {
//        NSString *str = CWInterface in
//    }
    
    /*
    CWInterface *wif = [CWInterface interface];
    NSLog(@"SSID: %@", wif.ssid);
    if (wif.ssid.length > 0) {
        NSLog(@"wifi");
    }else{
        NSLog(@"本地连接");
    }
    */
    /*
    CWInterface* wifi = [[CWWiFiClient sharedWiFiClient] interface];
    NSLog(@"BSD if name: %@", wifi.interfaceName);
    NSLog(@"SSID: %@", wifi.ssid);
    NSLog(@"txRate: %f", wifi.transmitRate);
    */
    
    
    
    NetWorkJudge *judge = [[NetWorkJudge alloc]init];
    NSLog(@"------%@", judge.returnNetWorkJudge);
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
