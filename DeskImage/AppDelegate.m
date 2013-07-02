//
//  AppDelegate.m
//  DeskImage
//
//  Created by Wingston Sharon on 02/07/13.
//  Copyright (c) 2013 Wingston Sharon. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:self.Menu];
    [statusItem setTitle:@"*"];
    [statusItem setHighlightMode:YES];

}

- (void) show:(NSTimer*)timer{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Hi there."];
    [alert runModal];
}

- (IBAction)clicked:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self
                                           selector:@selector(show:)
                                   userInfo:nil
                                    repeats:YES];
}

- (IBAction)stop:(id)sender {
    [timer invalidate];
    timer = nil;
}

@end
