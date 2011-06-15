//
//  TTImageViewMac.m
//  three20MacSample
//
//  Created by Anthony MAUGENDRE on 15/06/11.
//  Copyright 2011 CDI 76. All rights reserved.
//

#import "TTImageViewMac.h"


@implementation TTImageViewMac
@synthesize defaultImage=_defaultImage;

-(void)awakeFromNib{
    _imageDownloader=[[TTImageView alloc]init];
    _imageDownloader.delegate=self;
}

- (void)dealloc
{
    [super dealloc];
}

-(void)setUrlPath:(NSString*)url{
    self.image=_defaultImage;
    _imageDownloader.urlPath=url;
}

-(NSString*)urlPath{
    return _imageDownloader.urlPath;
}

-(void)imageView:(TTImageView *)imageView didLoadImage:(UIImage *)image{
    if (imageView!=_imageDownloader || !image) {
        return;
    }
    CGImageRef imageData=[image CGImage];
    NSSize  imgSize=NSMakeSize(image.size.width, image.size.height);
    NSImage *img=[[NSImage alloc]initWithCGImage:imageData size:imgSize];
	self.image=img;
}

@end
