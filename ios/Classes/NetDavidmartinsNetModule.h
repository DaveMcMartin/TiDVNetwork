/**
 * TiDVNetwork
 *
 * Created by Your Name
 * Copyright (c) 2020 Your Company. All rights reserved.
 */

#import "TiModule.h"

@interface NetDavidmartinsNetModule : TiModule {

}

/**
 Download a file to a path
 
 @param args
 */
- (NSString *)quickSmallFileDownload:(id)args;

/**
 Retrieve get text from URL
 
 @param args
 */
- (NSString *)quickSmallGETText:(id)args;

@end
