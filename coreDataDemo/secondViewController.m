//
//  secondViewController.m
//  coreDataDemo
//
//  Created by Student P_05 on 17/11/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController
-(NSManagedObjectContext *)managedObjectContext{
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
        
    }
    return context;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *oper = [NSString stringWithFormat:@"%c",_selectedOperation];
    
    
    self.operLAbel.text = oper;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)operationPerformer{
    
    NSString *firstNumber = self.numberOne.text;
    NSString *secondNumber = self.numberTwo.text;
    
    if (firstNumber.length >0) {
        
        if (secondNumber.length >0) {
            
            
            int num1 = firstNumber.intValue;
            int num2 = secondNumber.intValue;
            
            
            switch (_selectedOperation) {
                case '+':
                    
                    result = num1 + num2;
                    NSLog(@"%d",result);
                    break;
                    
                case '-':
                    
                    result = num1 - num2;
                    
                    break;
                case '*':
                    
                    result = num1 * num2;
                    
                    break;
                    
                case '/':
                    
                    result = num1 / num2;
                    
                    break;
                default:
                    break;
            }
            NSLog(@"%d",result);
            NSString *o_p = [NSString stringWithFormat:@"%d",result];
            NSManagedObjectContext *context = [self managedObjectContext];
            
            NSManagedObject *OpResult = [NSEntityDescription insertNewObjectForEntityForName:@"RESULT" inManagedObjectContext:context];
            
            [OpResult setValue:o_p forKey:@"result"];
            
            NSError *error;
            
            if ([context save:&error]) {
                NSLog(@"Saved");

            
                [self fetchData];
                NSLog(@"%@",resultArray);
                self.resultLabel.text = [[resultArray lastObject]valueForKey:@"result"];
            
                NSLog(@"%@",self.resultLabel.text);
                
            }
        }
    }
    
}



-(void)fetchData{
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"RESULT"];
        
        NSError *error;
        resultArray = [[context executeFetchRequest:fetchRequest error:&error]mutableCopy];
    
    NSLog(@"%@",resultArray);
        if (error) {
            NSLog(@"error:%@",error.localizedDescription);
        }
    
}

- (IBAction)EqualToAction:(id)sender {
    
    [self operationPerformer];
}
@end
