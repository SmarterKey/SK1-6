//
//  Device.h
//  SK1-6
//
//  Created by Administrator on 3/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//
// This is a data class for holding data for a Device

#import <Foundation/Foundation.h>

@interface Device : NSObject

@property (nonatomic, strong) NSString *deviceNickName;
@property (nonatomic, strong) NSString *deviceGSMNumber;
@property (nonatomic, strong) NSString *devicePassCode;
@property (nonatomic, strong) NSString *deviceTwilioNumber;

- (id)initWithTitle:(NSString*)deviceName deviceNickName:(NSString*)deviceNickName deviceGSMNumber:(NSString*)deviceGSMNumber devicePassCode:(NSString*)devicePassCode deviceTwilioNumber:(NSString*)deviceTwilioNumber;


@end
