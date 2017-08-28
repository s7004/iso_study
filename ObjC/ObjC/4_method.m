//
//  4_method.m
//  ObjC
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

- (void)go;
- (void)go:(int)a;

- (void)go:(int)a speed:(int)speed;
- (void)go:(int)a spped:(int)speed color:(int)color;
- (void)go:(int)a spped:(int)speed color:(int)color name:(NSString*)name;
@end

@implementation Car
- (void)go{
    printf("go0\n");
}
- (void)go:(int)a{
    printf("go1:%d\n", a);
}

- (void)go:(int)a speed:(int)speed {
    printf("go2\n");
}

- (void)go:(int)a spped:(int)speed color:(int)color {
    printf("go3\n");
}

- (void)go:(int)a spped:(int)speed color:(int)color string:(NSString *)name {
    printf("go4\n");
    NSLog(@"%@\n", name);
}

@end

int main(){
    
    Car *p = [Car new];
    
    [p go];
    [p go:33];
    [p go:23 speed:42];
    [p go:100 spped:100 color:20];
    [p go:23 spped:33 color:44 string:@"TAR"];
    
}
