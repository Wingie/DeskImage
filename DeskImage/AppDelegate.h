//
//  AppDelegate.h
//  DeskImage
//
//  Created by Wingston Sharon on 02/07/13.
//  Copyright (c) 2013 Wingston Sharon. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    NSStatusItem * statusItem;
    NSTimer* timer;
    NSMenu *Menu;
}

- (IBAction)clicked:(id)sender;
- (IBAction)stop:(id)sender;
- (void) show:(NSTimer*)timer;
@end
