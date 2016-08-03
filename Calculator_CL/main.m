//
//  main.m
//  Calculator_CL
//
//  Created by Евгений Иванов on 03.08.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stdio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Введите первый операнд \n");
        float firstOperand = 0.0;
        scanf("%f", &firstOperand);
        
        NSLog(@"Введите второй операнд \n");
        float secondOperand = 0.0;
        scanf("%f", &secondOperand);
        
        NSLog(@"Введите номер команды: 1 - сложение, 2 - вычитание, 3 - умножение, 4 - деление");
        int commandNum = 0;
        scanf("%d", &commandNum);
        
        switch (commandNum) {
            case 1:
                NSLog(@"Результат = %f", firstOperand + secondOperand);
                break;
            case 2:
                NSLog(@"Результат = %f", firstOperand - secondOperand);
                break;
            case 3:
                NSLog(@"Результат = %f", firstOperand * secondOperand);
                break;
            case 4:
            {
                if(secondOperand !=0)
                    NSLog(@"Результат = %f", firstOperand / secondOperand);
                else
                    NSLog(@"Ahtung! Деление на нуль!");
                break;
            }
            default:
                NSLog(@"Недопустимая команда!");
                break;
        }
    }
    return 0;
}


