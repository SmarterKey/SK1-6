//
//  Host.m
//  SK1-6
//
//  Created by Administrator on 3/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "Host.h"

@implementation Host

@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize phoneNumber = _phoneNumber;
@synthesize administratorPhoneNumber = _administratorPhoneNumber;
@synthesize supervisorPhoneNumber = _supervisorPhoneNumber;

-(id)initWithName:(NSString *)firstName lastName:(NSString *)lastName phoneNumber:(NSString *)phoneNumber administratorPhoneNumber:(NSString *)administratorPhoneNumber supervisorPhoneNumber:(NSString *)supervisorPhoneNumber {
    if ((self = [super init])) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.phoneNumber = phoneNumber;
        self.administratorPhoneNumber = administratorPhoneNumber;
        self.supervisorPhoneNumber = supervisorPhoneNumber;
    }
    return self;
}

@end
