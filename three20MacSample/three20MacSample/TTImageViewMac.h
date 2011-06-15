//
//  TTImageViewMac.h
//  three20MacSample
//
//  Created by Anthony MAUGENDRE on 15/06/11.
//  Copyright 2011 CDI 76. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Three20/Three20.h>

@interface TTImageViewMac : NSImageView<TTImageViewDelegate> {
@private
    TTImageView *_imageDownloader;
    NSImage     *_defaultImage;
}
@property (nonatomic,assign) NSString *urlPath;
@property (nonatomic,assign) NSImage *defaultImage;
@end
