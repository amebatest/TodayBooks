//
//  webookAppDelegate.m
//  webook
//
//  Created by felix on 11-10-25.
//  Copyright 2011年 weburner.com All rights reserved.
//

#import "WebookAppDelegate.h"

// this is one way of overriding PSPDFViewController. However, subclassing is advised
@implementation PSPDFViewController (PSPDFMinimalExampleCategoryOverride)

- (UIBarButtonItem *)toolbarBackButton {
    return nil;
}

@end

@implementation WebookAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    NSString *path = [[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Books"] stringByAppendingPathComponent:@"book.pdf"];
    PSPDFDocument *document = [PSPDFDocument PDFDocumentWithUrl:[NSURL fileURLWithPath:path]];
    document.searchEnabled = FALSE;
    PSPDFViewController *pdfController = [[[PSPDFViewController alloc] initWithDocument:document] autorelease];
    //  pdfController.pageMode = PSPDFPageModeSingle;
    
    //书的标题
    document.title = @"";
    
    
    UINavigationController *navController = [[[UINavigationController alloc] initWithRootViewController:pdfController] autorelease];
    self.window.rootViewController = navController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end