//
//  DIMain.m
//  DeskImage
//
//  Created by Wingston Sharon on 03/07/13.
//  Copyright (c) 2013 Wingston Sharon. All rights reserved.
//

#import "DIMain.h"

@implementation DIMain

+ (void) test{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"In another class!"];
    [alert runModal];
}

@end
