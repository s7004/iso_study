//
//  main.m
//  ObjC
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    printf("test~~~\n");
    
    char* str = "Hello,C";
    printf("%s\n", str);
    
    //objC 문자열
    NSString* str2 = @"HELLO, OBJ C";
    
    NSLog(@"%@\n", str2);
    
}
