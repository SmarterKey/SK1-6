//
//  Device.m
//  SK1-6
//
//  Created by Administrator on 3/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Device.h"

@implementation Device

@synthesize deviceNickName = _deviceNickName;
@synthesize deviceGSMNumber = _deviceGSMNumber;
@synthesize devicePassCode = _devicePassCode;
@synthesize deviceTwilioNumber = _deviceTwilioNumber;

-(id)initWithTitle:(NSString *)deviceName deviceNickName:(NSString *)deviceNickName deviceGSMNumber:(NSString *)deviceGSMNumber devicePassCode:(NSString *)devicePassCode deviceTwilioNumber:(NSString *)deviceTwilioNumber {
    if ((self = [super init])) {
        self.deviceNickName = deviceNickName;
        self.deviceGSMNumber = deviceGSMNumber;
        self.devicePassCode = devicePassCode;
        self.deviceTwilioNumber = deviceTwilioNumber;
    }
    return self;
}

@end
