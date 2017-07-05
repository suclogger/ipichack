//
//  SKPaymentTransaction+hook.m
//  ipichack
//
//  Created by Suclogger-MAC on 2017/7/5.
//  Copyright © 2017年 Suclogger. All rights reserved.
//

#import "SKPaymentTransaction+hook.h"

@implementation NSObject (SKPaymentTransactionHook)

+ (void)hook_SKPaymentTransaction
{
    [self jr_swizzleMethod:@selector(transactionState:)
                withMethod:@selector(hook_transactionState:)
                     error:NULL];
    [self jr_swizzleMethod:@selector(error:)
                withMethod:@selector(hook_transactionError:)
                     error:NULL];
}


- (long)hook_transactionState:(id)sender
{
//    NSAlert *alert = [[NSAlert alloc] init];
//    alert.messageText = @"Hello world!";
//    [alert runModal];
    NSLog(@"hook_transactionState trigered");

    
    return 1;
//    [self hook_transactionState:sender];
}

- (NSError*)hook_transactionError:(id)sender
{
//        NSAlert *alert = [[NSAlert alloc] init];
//        alert.messageText = @"Hello world!";
//        [alert runModal];
    NSLog(@"hook_transactionError trigered");
    
    return nil;
    //    [self hook_transactionState:sender];
}


@end
