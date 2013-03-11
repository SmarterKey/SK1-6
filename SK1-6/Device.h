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

@property (nonatomic, strong) NSString *nickName;
@property (nonatomic, strong) NSString *gsmNumber;
@property (nonatomic, strong) NSString *passCode;
@property (nonatomic, strong) NSString *twilioNumber;

- (id)initWithTitle:(NSString*)nickName gsmNumber:(NSString*)gsmNumber passCode:(NSString*)passCode twilioNumber:(NSString*)twilioNumber;


@end
