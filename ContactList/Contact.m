//
//  Contact.m
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(instancetype)initWithName:(NSString*)name
                   andEmail:(NSString*)email
{
    self = [super init];
    if(self)
    {
        _name = name;
        _email = email;
    }
    return self;
}

-(instancetype)init
{
    self = [self initWithName:@"Default"
                     andEmail:@"Default"];
    return self;
    
}

@end
