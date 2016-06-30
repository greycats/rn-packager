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
		NSBundle *bundle = [NSBundle bundleForClass:[self class]];
		NSURL *jsCodeLocation = [bundle URLForResource:@"main" withExtension:@"jsbundle" subdirectory:@"XealthResource.bundle"];

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
