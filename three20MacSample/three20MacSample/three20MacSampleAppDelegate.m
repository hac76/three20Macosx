//
//  three20MacSampleAppDelegate.m
//  three20MacSample
//
//  Created by Anthony MAUGENDRE on 15/06/11.
//  Copyright 2011 CDI 76. All rights reserved.
//

#import "three20MacSampleAppDelegate.h"
#import "TTImageViewMac.h"

@implementation three20MacSampleAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    imageView.defaultImage=[NSImage imageNamed:@"loading.png"];
    imageView.urlPath=@"http://www.google.fr/intl/fr_ALL/images/logos/images_logo_lg.gif";
}

@end
