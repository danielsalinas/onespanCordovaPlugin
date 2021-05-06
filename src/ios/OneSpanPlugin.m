/********* OneSpanPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface OneSpanPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)OSActivate:(CDVInvokedUrlCommand*)command;
@end

@implementation OneSpanPlugin

- (void)OSActivate:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
