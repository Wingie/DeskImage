//
//  DIMain.h
//  DeskImage
//
//  Created by Wingston Sharon on 03/07/13.
//  Copyright (c) 2013 Wingston Sharon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DIMain : NSObject


+ (void) test;
+ (NSData *) ProcessImage:(NSString *)filePath;
+ (NSImage*) desktopAsImage;
+ (NSData *) PNGRepresentationOfImage:(NSImage *) image;
+ (NSArray *) returnDate;
+(void) SetDeskImage :(NSString*)wallStr;
@end
