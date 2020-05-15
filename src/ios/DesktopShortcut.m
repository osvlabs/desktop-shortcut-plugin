/********* desktop-shortcut.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "CXLCreateDesktopManager.h"

@interface DesktopShortcut : CDVPlugin

@end

@implementation DesktopShortcut

- (void)createDesktopWithIconImage:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSArray *args = [command.arguments objectAtIndex:0];
    if ([args count] > 2) {
        NSString* appTitle = [args objectAtIndex:1];
        NSString* URLScheme = [args objectAtIndex:2];
        NSString* iconImage = [args objectAtIndex:0];
        if ((iconImage != nil && [iconImage length] > 0) && (appTitle != nil && [appTitle length] > 0) && (URLScheme != nil && [URLScheme length] > 0)) {

           [[CXLCreateDesktopManager sharedInsance]
               createDesktopWithIconImage:iconImage
                              launchImage:@"LaunchStoryboard"
                                 appTitle:appTitle
                                URLScheme:URLScheme];
               pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        }
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
