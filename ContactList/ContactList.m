//
//  ContactList.m
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        NSMutableArray *contactListArrayObject = [[NSMutableArray alloc]init];
        _contactArray = contactListArrayObject;
        
    }
    return self;
}


-(void)addContact: (Contact*)newContact
{
    [self.contactArray addObject:newContact];
}



-(void)listContacts
{
    for(Contact* thisContact in self.contactArray)
    {
        NSLog(@"%lu:%@",(unsigned long)[self.contactArray indexOfObject:thisContact],thisContact.name);
    }
}

@end
