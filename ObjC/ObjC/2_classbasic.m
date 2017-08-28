//
//  2_classbasic.m
//  ObjC
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//

#import <Foundation/Foundation.h>

//1. obec-C는 small talk의 영향을 받았다..
// => 다른 언어와 용어가 차이가 잇따.


// 2. @ 기호 C언어 문법의 확장 -> objc문법을 의미

//    NSLog(@"speed : %d", p->color);
// 3. 객체 생성 방식
//  ObjectC의 객체는 반드시 힙에 생성되어야 한다.



// car.h - 선언
// obj의 모든 클래스는 NSObject의 자식이다.
@interface Car : NSObject {
@public
//@protected
//@private
    int speed;

    int color;
}

//메소드
// - 인스턴스 메소드

-(void)foo;

// - 클래스 메소드
+(void)goo;

@end


// car.m - 정의
@implementation Car

- (void)foo{
    printf("foo\n");
}
    
+ (void)goo{
    printf("goo\n");
}
@end

int main()
{
    Car* p = [Car new];
    
    NSLog(@"%@", p);
    
    [p foo];
    [Car goo];
}
