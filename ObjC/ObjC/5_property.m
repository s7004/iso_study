//
//  5_property.m
//  ObjC
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//

#import <Foundation/Foundation.h>

//1. 객체의 인스턴스 변수에 직접 접근하는 것이 아니라ㅡ
//   접근자 메소드 (getter, setter)를 통해서 해야된다.

// 프로퍼티 문법
// obje-c, c#
#if 0
@interface Car : NSObject{

    int _color;
}

- (void)setColor:(int)color;
- (int)color;

@end

@implementation Car
- (void)setColor:(int)color{
    _color = color;
}
- (int)color{
    return _color;
}

@end
#endif

@interface Car : NSObject

@property int color;

- (void)foo;
@end


@implementation Car
//@synthesize color = mycolor;
- (void)foo {
    printf("%d\n", self.color);
    printf("%d\n", _color);
}
@end


int main(){
    Car *p = [Car new];
    [p foo];
    
    [p setColor:30];
    printf("%d\n", [p color]);
    
    //2. objC의 접근제 메소드를 만드는 규칙을 지킨 경우
    //.  .(dot)연산자를 통해서 setter/ getter를 사용할 수 잇다.
    
    p.color = 22;
    printf("%d\n", p.color);
    
}


//3. 프로퍼티 - 인스턴스 변수 + 접근자 메소드를 제공하는 문법




