//
//  SKPaymentTransaction+hook.h
//  ipichack
//
//  Created by Suclogger-MAC on 2017/7/5.
//  Copyright © 2017年 Suclogger. All rights reserved.
//

#import "SKPaymentTransaction.h"

@interface NSObject (SKPaymentTransactionHook)

+ (long)hook_SKPaymentTransaction;

@end
