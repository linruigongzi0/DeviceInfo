//
//  ViewController.m
//  DeviceInfo
//
//  Created by Reason Lee on 19/03/2018.
//  Copyright © 2018 Reason Lee. All rights reserved.
//

#import "ViewController.h"
#import "sys/utsname.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Device Info
    NSLog(@"%@",UIDevice.currentDevice.name);
    NSLog(@"%@",UIDevice.currentDevice.systemName);
    NSLog(@"%@",UIDevice.currentDevice.systemVersion);
    
    NSLog(@"%@",UIDevice.currentDevice.model);
    NSLog(@"%@",UIDevice.currentDevice.localizedModel);

    NSLog(@"%ld",(long)UIDevice.currentDevice.batteryState);
    NSLog(@"%f",UIDevice.currentDevice.batteryLevel);
    
    //[[[UIDevice currentDevice] identifierForVendor].UUIDString]
    NSLog(@"%@",UIDevice.currentDevice.identifierForVendor.UUIDString);
    
    // Software Version
    NSDictionary *bundleDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [bundleDictionary objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersionNum = [bundleDictionary objectForKey:@"CFBundleVersion"];
    NSLog(@"%@.%@",appVersion,appVersionNum);
    
    // Device Size
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenRect.size;
    NSLog(@"Phisical Size:%.0f ｘ %.0f",screenSize.width,screenSize.height);
    
    CGFloat screenScale = [[UIScreen mainScreen] scale];
    CGSize screenPixel =CGSizeMake(screenSize.width*screenScale, screenSize.height*screenScale);
    NSLog(@"Pixel Size:%.0f ｘ %.0f",screenPixel.width,screenPixel.height);

    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *machine = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString *nodename =[NSString stringWithCString:systemInfo.nodename encoding:NSUTF8StringEncoding];
    NSString *sysname = [NSString stringWithCString:systemInfo.sysname encoding:NSUTF8StringEncoding];
    NSString *release = [NSString stringWithCString:systemInfo.release encoding:NSUTF8StringEncoding];
    NSString *version = [NSString stringWithCString:systemInfo.version encoding:NSUTF8StringEncoding];
    NSLog(@"%@\n%@\n%@\n%@\n%@",machine,nodename,sysname,release,version);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
