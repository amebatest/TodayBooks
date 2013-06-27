//
//  main.m
//  webook
//
//  Created by felix on 11-10-25.
//  Copyright 2011年 weburner.com All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebookAppDelegate.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil,  NSStringFromClass([WebookAppDelegate class]));
    [pool release];
    return retVal;
}
