//
//  DemoView.m
//  Demo
//
//  Created by Rex Sheng on 6/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "DemoView.h"
#import "RCTRootView.h"

@implementation DemoView

- (instancetype)init
{
	if (self = [super init]) {
		NSLog(@"%@", [NSBundle bundleForClass:[self class]]);
		NSLog(@"%@", [NSBundle bundleWithIdentifier:@"co.interactivelabs.Packager"]);
		NSBundle *staticBundle = [NSBundle bundleWithPath:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"PackagerBundle.bundle"]];
		NSLog(@"%@ %@",staticBundle, [[NSBundle mainBundle] resourcePath]);

		NSURL *jsCodeLocation = [[NSBundle bundleForClass:[self class]] URLForResource:@"main" withExtension:@"jsbundle"];
		NSLog(@"%@", jsCodeLocation);

		RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
																												moduleName:@"Demo"
																								 initialProperties:nil
																										 launchOptions:nil];
		rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
		rootView.frame = self.bounds;
		[self addSubview:rootView];
	}
	return self;
}

@end
