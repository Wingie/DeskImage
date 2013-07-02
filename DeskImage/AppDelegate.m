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

- (IBAction)clicked:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Hi there."];
    [alert runModal];
}

@end
