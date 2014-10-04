//
//  main.m
//  learn
//
//  Created by Phinome on 10/2/14.
//  Copyright (c) 2014 Phinome. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface 部分 ----
/*
 @interface XYPoint:NSObject

-(void) print;
-(void) setXpoint:  (int)    x;
-(void) setYpoint:  (int)    y;
-(int)  getXpoint;
-(int)  getYpoint;
@end
 */

//---- @implementation 部分 ---
/*
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
 */

//@interface Calculator: NSObject
//
//// 累加方法
//
//-(void) setAccumulator: (double)    value;
//-(void) clear;
//-(double)   accumulator;
//
//// 算术方法
//
//-(double) add:  (double)    value;
//-(double) subtract: (double)  value;
//-(double) multiply: (double)  value;
//-(double) divide: (double)    value;
//-(double) changeSign;
//-(double) reciprocal; //累加器
//-(double) xSquared;
//
//@end
//
//@implementation Calculator
//{
//    double  accumulator;
//}
//
//-(void) setAccumulator: (double)    value
//{
//    accumulator = value;
//}
//-(void) clear
//{
//    accumulator = 0;
//}
//
//-(double)   accumulator
//{
//    return accumulator;
//}
//-(double)   add:    (double)  value
//{
//    return accumulator += value;
//}
//-(double)   subtract:   (double)    value
//{
//    return accumulator -= value;
//}
//-(double)   multiply:   (double)   value
//{
//    return accumulator *= value;
//}
//-(double)   divide: (double)    value
//{
//    return accumulator /= value;
//}
//-(double)   changeSign
//{
//    return -accumulator;
//}
//-(double)   reciprocal
//{
//    return accumulator;
//}
//-(double)   xSquared
//{
//    return accumulator * accumulator;
//}
//
//@end

//---- program 部分 --

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //XYPoint *points = [[XYPoint alloc] init];
        
        // 设置坐标值
        //[points setXpoint:3];
        //[points setYpoint:9];
        
        // 显示结果
        //NSLog(@"The resulet of XYPonit is: (%i,%i)",[points getXpoint],[points getYpoint]);
        
        // 温度转换
//        float ft;
//        ft = 60.0;
//        
//        NSLog(@"The C = (F -32) / 1.8 is %f", (ft-32) / 1.8);
        
        // Calculator class
//        Calculator *deskCalc = [[Calculator alloc] init];
//        
//        [deskCalc setAccumulator: 100];
//        NSLog(@"Add : %g", [deskCalc add:200]);
//        NSLog(@"Subtract : %g", [deskCalc subtract:50.3]);
//        NSLog(@"Multiply : %g", [deskCalc multiply: 25.2]);
//        NSLog(@"Divide : %g", [deskCalc divide: 5.0]);
        
//      颠倒显示数字的位数
//        int number , right_digit;
//        
//        NSLog(@"Enter you Number :" );
//        
//        scanf("%i", &number);
//        
//        while ( number != 0 ) {
//            right_digit += number % 10;
//            number /= 10;
//        }
//        NSLog(@"%i", right_digit);
//        
//      将输入的数字每一位转换为对应的英文表示
        long long int number, divider;
        
        NSLog(@"Input number:");
        scanf("%lli", &number);
        divider = 1;
        
        while ((number/divider)>9) {
            divider*=10;
        }
        while (divider>=1) {
            switch (number/divider) {
                case 1:
                    NSLog(@"one");
                    break;
                case 2:
                    NSLog(@"two");
                    break;
                case 3:
                    NSLog(@"three");
                    break;
                case 4:
                    NSLog(@"four");
                    break;
                case 5:
                    NSLog(@"five");
                    break;
                case 6:
                    NSLog(@"six");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 9:
                    NSLog(@"nine");
                    break;
                case 0:
                    NSLog(@"zero");
                    break;  
                default:  
                    break;  
            }  
            number%=divider;  
            divider/=10;  
        }
        
    }
    return 0;
}
