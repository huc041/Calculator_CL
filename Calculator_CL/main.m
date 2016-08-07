//
//  main.m
//  Calculator_CL
//
//  Created by Евгений Иванов on 03.08.16.
//  Copyright © 2016 Евгений Иванов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stdio.h"
#import "help.h"

void printOnScreen(float num) {
    NSLog(@"Результат = %.1f", num);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        char str[1];
        float firstOperand = 0.0;
        float secondOperand = 0.0;
        scanf("%s %f %f", str,&firstOperand,&secondOperand);
        
        NSString *strCommand = [NSString stringWithFormat:@"%s",str];
        
        if([strCommand isEqualToString:@"+"]){
            printOnScreen(firstOperand + secondOperand);
        }
        else if ([strCommand isEqualToString:@"-"]){ // вычитание
            printOnScreen(firstOperand - secondOperand);
        }
        else if ([strCommand isEqualToString:@"*"]){ // умножение
            printOnScreen(firstOperand * secondOperand);
        }
        else if ([strCommand isEqualToString:@"/"]){ // деление
            
            if(secondOperand !=0)
                printOnScreen(firstOperand / secondOperand);
            else
                NSLog(@"Ошибка! Деление на нуль!");
        }
        else if ([strCommand isEqualToString:@"%"]){ // остаток от деления
            
            if(secondOperand !=0)
            {
                int result  = (int)((int)firstOperand % (int)secondOperand);
                printOnScreen((float)result);
            }
            else
                NSLog(@"Ошибка! Деление на нуль!");
        }
        else if ([strCommand isEqualToString:@"Q"]){ // корень степени OPERAND1 из OPERAND2
            
            if(firstOperand !=0)
                printOnScreen(powf(secondOperand, (1/firstOperand)));
            else
                NSLog(@"Ошибка! Деление на нуль!");
        }
        else{
            NSLog(@"Ошибка! Недопустимая команда!");
        }
        
        
    }
    return 0;
}





