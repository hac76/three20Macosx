//
//  three20MacSampleAppDelegate.h
//  three20MacSample
//
//  Created by Anthony MAUGENDRE on 15/06/11.
//  Copyright 2011 CDI 76. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class TTImageViewMac;

@interface three20MacSampleAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet TTImageViewMac *imageView;
@private
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
