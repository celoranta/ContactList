//
//  ContactList.h
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, copy) NSMutableArray *contactArray;

-(void)addContact: (Contact*)newContact;

-(void)listContacts;


@end
