//
//  Host.h
//  SK1-6
//
//  Created by Administrator on 3/11/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Host : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *administratorPhoneNumber;
@property (nonatomic, strong) NSString *supervisorPhoneNumber;

-(id)initWithName:(NSString*)firstName lastName:(NSString*)lastName phoneNumber:(NSString*)phoneNumber administratorPhoneNumber:(NSString*)administratorPhoneNumber supervisorPhoneNumber:(NSString*)supervisorPhoneNumber;


@end
