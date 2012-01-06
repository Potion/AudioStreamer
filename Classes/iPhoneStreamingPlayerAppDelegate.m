//
//  iPhoneStreamingPlayerAppDelegate.m
//  iPhoneStreamingPlayer
//
//  Created by Matt Gallagher on 28/10/08.
//  Copyright Matt Gallagher 2008. All rights reserved.
//
//  This software is provided 'as-is', without any express or implied
//  warranty. In no event will the authors be held liable for any damages
//  arising from the use of this software. Permission is granted to anyone to
//  use this software for any purpose, including commercial applications, and to
//  alter it and redistribute it freely, subject to the following restrictions:
//
//  1. The origin of this software must not be misrepresented; you must not
//     claim that you wrote the original software. If you use this software
//     in a product, an acknowledgment in the product documentation would be
//     appreciated but is not required.
//  2. Altered source versions must be plainly marked as such, and must not be
//     misrepresented as being the original software.
//  3. This notice may not be removed or altered from any source
//     distribution.
//

#import "iPhoneStreamingPlayerAppDelegate.h"
#import "iPhoneStreamingPlayerViewController.h"
//#import "ios-ntp.h"

@implementation iPhoneStreamingPlayerAppDelegate

@synthesize window;
@synthesize viewController;

//- (void)applicationDidFinishLaunching:(UIApplication *)application {
- (BOOL)application:(UIApplication *) app didFinishLaunchingWithOptions:(NSDictionary *) options {

    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
    viewController.app_state = 0;
    
	[viewController buttonPressed:nil];
    
    
//    [NetworkClock sharedNetworkClock];                      // gather up the ntp servers ...
//    /*┌──────────────────────────────────────────────────────────────────────────────────────────────────┐
//     │  Create a timer that will fire in ten seconds and then every ten seconds thereafter to ask the   │
//     │ network clock what time it is.                                                                   │
//     └──────────────────────────────────────────────────────────────────────────────────────────────────┘*/
//    NSTimer * repeatingTimer = [[NSTimer alloc]
//                                initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:1.0]
//                                interval:1.0 target:self selector:@selector(repeatingMethod:)
//                                userInfo:nil repeats:YES];
//    
//    [[NSRunLoop currentRunLoop] addTimer:repeatingTimer forMode:NSDefaultRunLoopMode];
//    [repeatingTimer release];
    
    return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
