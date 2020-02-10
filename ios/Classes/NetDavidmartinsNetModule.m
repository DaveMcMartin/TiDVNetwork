/**
 * TiDVNetwork
 *
 * Created by Your Name
 * Copyright (c) 2020 Your Company. All rights reserved.
 */

#import "NetDavidmartinsNetModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation NetDavidmartinsNetModule

#pragma mark Internal

// This is generated for your module, please do not change it
- (id)moduleGUID
{
  return @"5f04644b-9b11-47eb-8ac3-f5745024afa0";
}

// This is generated for your module, please do not change it
- (NSString *)moduleId
{
  return @"net.davidmartins.net";
}

#pragma mark Lifecycle

- (void)startup
{
  // This method is called when the module is first loaded
  // You *must* call the superclass
  [super startup];
  DebugLog(@"[DEBUG] %@ loaded", self);
}

#pragma Public APIs

- (NSString *)quickSmallFileDownload:(id)args
{
    if(args != NULL && [args count] > 1) {
        NSString *downloadURL = [args objectAtIndex:0];
        NSString *fileDestination = [args objectAtIndex:1];
        
        if(fileDestination == nil || (fileDestination != nil && [fileDestination isEqualToString:@""])) {
            return @"File destination path is required.";
        }
        if(downloadURL == nil || (downloadURL != nil && [downloadURL isEqualToString:@""])) {
            return @"Download url is required.";
        }
        
        NSURL *url = [NSURL URLWithString:downloadURL];
        NSData *urlData = [NSData dataWithContentsOfURL:url];
        
        if (urlData) {
            [urlData writeToFile:fileDestination atomically:YES];
            
        } else {
            return @"Could not conver URL data";
        }
        
    } else {
        return @"File path is required.";
    }
    
    return @"";
}

- (NSString *)quickSmallGETText:(id)args
{
    if(args != NULL && [args count] > 0) {
        NSString *downloadURL = [args objectAtIndex:0];
        
        if(downloadURL == nil || (downloadURL != nil && [downloadURL isEqualToString:@""])) {
            return @"Download url is required.";
        }
        
        NSURL *url = [NSURL URLWithString:downloadURL];
        NSData *urlData = [NSData dataWithContentsOfURL:url];
        
        if (urlData) {
            return [[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
            
        } else {
            return @"Could not conver URL data";
        }
        
    } else {
        return @"File path is required.";
    }
    
    return @"";
}

@end
