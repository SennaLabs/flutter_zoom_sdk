//
//  UIImage+Additions.m
//  MobileRTCSample
//
//  Created by Zoom Video Communications on 3/17/14.
//  Copyright (c) 2014 Zoom Video Communications, Inc. All rights reserved.
//

#import "UIImage+Additions.h"

@implementation UIImage (Additions)

+ (UIImage*)imageWithUIColor:(UIColor*)color
{
    CGRect rect = CGRectMake(0.f, 0.f, 1.f, 1.f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
//
+ (UIImage*)imageNamed:(NSString *)name {
    if (@available(iOS 13.0, *)) {
        UIImage *aImage = [UIImage imageNamed:name inBundle:[NSBundle bundleWithIdentifier:@"org.cocoapods.flutter-zoom-sdk"] withConfiguration:nil];
        return aImage;
    } else {
        UIImage *aImage = [UIImage imageNamed:name inBundle:[NSBundle bundleWithIdentifier:@"org.cocoapods.flutter-zoom-sdk"] compatibleWithTraitCollection:nil];
        return aImage;
    }
}

@end
