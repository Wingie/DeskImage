//
//  AppDelegate.m
//  DeskImage
//
//  Created by Wingston Sharon on 02/07/13.
//  Copyright (c) 2013 Wingston Sharon. All rights reserved.
//

#import "AppDelegate.h"
#import "DIMain.h"
#include <stdlib.h>
@implementation AppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
//    NSURL *imageURL;
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:Menu];
    [statusItem setTitle:@"*"];
    [statusItem setHighlightMode:YES];
    
    NSString *outFilePath = @"/Users/wingstonsharon/Pictures/i.png";
//    NSString *inFilePath = @"/Library/Desktop Pictures/Earth Horizon.jpg";
    NSMutableString *folderFilePath =[NSMutableString stringWithCapacity:10];// @"/Library/Desktop Pictures";
    [folderFilePath appendString:@"/Library/Desktop Pictures/"];
    NSArray *directoryContent  = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:folderFilePath error:nil];
    NSInteger index = arc4random() % [directoryContent count];
    NSString *inFilePath = [folderFilePath stringByAppendingString:[directoryContent objectAtIndex:index]];
    
    NSLog(@"%@",inFilePath);
    
    [[DIMain ProcessImage:inFilePath] writeToFile:outFilePath atomically:YES];
}

- (void) show:(NSTimer*)timer{

    [DIMain test];
}

- (IBAction)clicked:(id)sender {
//    timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                            target:self
//                            selector:@selector(show:)
//                            userInfo:nil
//                            repeats:YES];
}

- (IBAction)stop:(id)sender {
//    [timer invalidate];
//    timer = nil;
}

@end
