//
//  NHUser.h
//  NooraHealth
//
//  Created by WM on 4/4/14.
//  Copyright (c) 2014 Noora Health. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHUser : NSObject

// Handle basic user analytics here, store in nsuserdefaults and later deploy to the server or something...

@property NSString *type;
@property NSString *code;

@end
