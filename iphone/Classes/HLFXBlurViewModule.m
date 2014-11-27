/**
 * TiFXBlurView
 *
 * Created by Jonatan Lundin
 * Copyright (c) 2014 Hyperlab AB. All rights reserved.
 */

#import "HLFXBlurViewModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation HLFXBlurViewModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"977be9d5-5e83-4a79-a62f-9445c7f24e20";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"hl.fxblurview";
}

#pragma mark Lifecycle

-(void)startup
{
	[super startup];
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

@end
