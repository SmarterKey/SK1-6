//
//  Device.m
//  SK1-6
//
//  Created by Administrator on 3/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Device.h"

@implementation Device

@synthesize nickName = _nickName;
@synthesize gsmNumber = _gsmNumber;
@synthesize passCode = _passCode;
@synthesize twilioNumber = _twilioNumber;

-(id)initWithTitle:(NSString *)nickName gsmNumber:(NSString *)gsmNumber passCode:(NSString *)passCode twilioNumber:(NSString *)twilioNumber {
    if ((self = [super init])) {
        self.nickName = nickName;
        self.gsmNumber = gsmNumber;
        self.passCode = passCode;
        self.twilioNumber = twilioNumber;
    }
    return self;
}

@end
