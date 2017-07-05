//
//  ipichack.m
//  ipichack
//
//  Created by Suclogger-MAC on 2017/7/5.
//  Copyright © 2017年 Suclogger. All rights reserved.
//

#import "ipichack.h"
#import "SKPaymentTransaction+hook.h"

@interface ipichack()

@end


@implementation ipichack

/**
 * @return the single static instance of the plugin object
 */
+ (instancetype)sharedInstance
{
    static ipichack *plugin = nil;
    @synchronized(self) {
        if (!plugin) {
            plugin = [[self alloc] init];
        }
    }
    return plugin;
}


/**
 * A special method called by SIMBL once the application has started and all classes are initialized.
 */
+ (void)load
{
    ipichack *plugin = [ipichack sharedInstance];
    NSLog(@"++++++++ %@ plugin loaded ++++++++", plugin);
    
    [NSClassFromString(@"SKPaymentTransaction") hook_SKPaymentTransaction];
}


@end
