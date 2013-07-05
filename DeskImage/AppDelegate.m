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
    
    outFilePath = @"/tmp/wall";
    
//    NSString *inFilePath = @"/Library/Desktop Pictures/Earth Horizon.jpg";
    folderFilePath =[NSMutableString stringWithCapacity:10];
    [folderFilePath appendString:@"/Library/Desktop Pictures/"];
    directoryContent  = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:folderFilePath error:nil];
    index = -1;
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
    
    if(index!=-1){
        [[NSFileManager defaultManager] removeItemAtPath:[NSString stringWithFormat:@"%@%ld.png", self->outFilePath, (long)index] error:nil];
    }
    index = arc4random() % [directoryContent count];
    NSString *inFilePath = [folderFilePath stringByAppendingString:[directoryContent objectAtIndex:index]];
    
    NSString *wallStr = [NSString stringWithFormat:@"%@%ld.png", self->outFilePath, (long)index];
    
    [[DIMain ProcessImage:inFilePath] writeToFile:wallStr atomically:YES];
    [DIMain SetDeskImage:wallStr];
    NSLog(@"%@",wallStr);

}

- (IBAction)stop:(id)sender {
//    [timer invalidate];
//    timer = nil;
}

@end
