//
//  Contact.h
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;

-(instancetype)initWithName:(NSString*)name
                   andEmail:(NSString*)email;


@end
