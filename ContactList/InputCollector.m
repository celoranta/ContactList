//
//  InputCollector.m
//  ContactList
//
//  Created by Chris Eloranta on 2018-02-25.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString*) inputForPrompt:(NSString *)promptString
{
    // Print the prompt string
    NSLog(@"%@",promptString);
    
    // Wait for user response
    char str[100];
    fgets (str, 100, stdin);
    
    // parse phrase into an NSString
    NSString *userInputString = [[NSString alloc] initWithUTF8String:str];
    
    userInputString = [userInputString lowercaseString];
    
    //remove escape symbols and leading/trailing whitespace
    userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userInputString;
}

@end

