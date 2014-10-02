//
//  main.m
//  learn
//
//  Created by Phinome on 10/2/14.
//  Copyright (c) 2014 Phinome. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface 部分 ----
@interface XYPoint:NSObject

-(void) print;
-(void) setXpoint:  (int)    x;
-(void) setYpoint:  (int)    y;
-(int)  getXpoint;
-(int)  getYpoint;
@end

//---- @implementation 部分 ---
@implementation XYPoint
{
    int xPoint;
    int yPoint;
}

-(void)print
{
    NSLog(@"The Point is (%i,%i)",xPoint,yPoint);
}
-(void)setXpoint: (int) x
{
    xPoint = x;
}
-(void)setYpoint: (int) y
{
    yPoint = y;
}
-(int)getXpoint
{
    return xPoint;
}
-(int)getYpoint
{
    return yPoint;
}


@end

//---- program 部分 --

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        XYPoint *points = [[XYPoint alloc] init];
        
        // 设置坐标值
        [points setXpoint:3];
        [points setYpoint:9];
        
        // 显示结果
        NSLog(@"The resulet of XYPonit is: (%i,%i)",[points getXpoint],[points getYpoint]);
    }
    return 0;
}
