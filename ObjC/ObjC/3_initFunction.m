//
//  3_initFunction.m
//  ObjC
//
//  Created by Elite on 2017. 8. 28..
//  Copyright © 2017년 LG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    int _color;
}

- (int)color;


// 기본 생성자
// id : 모든 객체를 가리킬 수 있는 포인터 타입
// objC의 최상위 타입
// : NSObject, NSProxy
- (id)init;
- (id)initWithColor:(int)color;

- (void)dealloc;

@end




@implementation Car

//지정 초기화 메소드 Designated Initializer
- (id)initWithColor:(int)color{
    self = [super init];
    if(self) {
        _color = color;
    }
    
    return self;
}

- (id)init {
    //1. 부모의 초기화 메소드를 호출
    //반드시 self에 대립하고 self에 대한 변경은 반드시 초기화 메소드에서만 가능
    self = [super init];
    
    if(self) {
        _color = 44;
    }
    
    return self;
    
}

- (int)color{
    //return self->color;
    return _color;
}

- (void)dealloc {
    printf("dealloc\n");
}
@end



int main(){
    Car *p = [Car new];
    
    //new를 통해 객체 생성시 init밖에 사용되지 않는다.
    // new = alloc + init
    
    //사용자 정의, 초기화 메소드 사용을 위해선 new를 통한 객체 생성이 아니라
    // alloc + 사용자 정의 초기화를 통해 생성해야 됨
    // => 2단계 생성 패턴
    Car *p2 = [[Car alloc] initWithColor:33];
    
    printf("color : %d\n", [p color]);
    printf("color(p2) : %d\n", [p2 color]);
}




