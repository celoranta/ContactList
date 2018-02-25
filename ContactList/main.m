//
//  main.m
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // define boolean for sensing quit at end of while loop
        bool quit = NO;
        
        // create a contact list instance
        ContactList *myContactList = [[ContactList alloc]init];
        
        // continue this loop until user chooses the 'quit' option
        while(quit == NO)
        {
            // create input collector instance
            InputCollector * inputCollector = [[InputCollector alloc]init];
            
            //prompt user with main menu
            NSString *menuReply = [inputCollector inputForPrompt:@"\nWhat would you like do next? \n \n new - Create a new contact \n list - List all contacts \n show - show a contact by index # \n quit - Exit Application \n >"];
            
            // conditionals for parsing user response
            
            // 'quit' conditional
            if([menuReply isEqualToString:@"quit"])
            {
                quit = YES;
            }
            
            // 'list' conditional
            else if ([menuReply isEqualToString:@"list"])
                {
                    // run 'list' method of contact list
                    [myContactList listContacts];
                }
            
            // 'new' conditional
            else if([menuReply isEqualToString:@"new"])
                {
                    // prompt user for email address and name
                    NSString *newContactEmail = [inputCollector inputForPrompt:@"Please enter an email address"];
                    NSString *newContactFullName = [inputCollector inputForPrompt:@"..and a full name"];
            
                    // initialize new contact object from user input
                    Contact *newContact = [[Contact alloc]initWithName:newContactFullName
                                                      andEmail:newContactEmail];
            
                    // add contact to list
                    [myContactList addContact: newContact];
                }
            
            // 'show' conditional
            else if([menuReply isEqualToString:@"show"])
            {
                // define boolean for 'while' loop to ensure valid user response
                bool validEntry = NO;
             
                // contine to run this loop until a valid entry is received
                while(!validEntry)
                {
                    // prompt user for an index
                    NSString *indexNumber = [inputCollector inputForPrompt:@"Please enter index number: "];
                    
                    // convert to a value
                    NSInteger indexToShow = [indexNumber integerValue];
                    
                    // set boolean to YES if answer is valid
                    validEntry = (indexToShow < [myContactList.contactArray count]);
                    
                    // run this code on a valid user entry
                    if (validEntry)
                    {
                        // log contact detail to user
                        NSLog(@"Contact Details for Index #%@:",indexNumber);
                        Contact *contactToShow = myContactList.contactArray[indexToShow];
                        NSLog(@"%@",contactToShow.name);
                        NSLog(@"%@",contactToShow.email);
                        
                        // exit input loop on valid user entry
                        validEntry = YES;
                    }
                }
            }
        }
        
    // Toodles, user!
    NSLog(@"Fare thee well, brave sojourner.");
    }
        return 0;
}


