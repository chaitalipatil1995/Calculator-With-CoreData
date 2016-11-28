//
//  ViewController.m
//  coreDataDemo
//
//  Created by Student P_05 on 17/11/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//-(NSManagedObjectContext *)managedObjectContext{
//    
//    NSManagedObjectContext *context = nil;
//    
//    id delegate = [[UIApplication sharedApplication]delegate];
//    
//    if ([delegate performSelector:@selector(managedObjectContext)]) {
//        context = [delegate managedObjectContext];
//        
//    }
//    
//    return context;
//
//}


//-(NSManagedObjectContext *)managedObjectContext{
//    
//    NSManagedObjectContext *context = nil;
//    
//    id delegate = [[UIApplication sharedApplication]delegate];
//    
//    if ([delegate performSelector:@selector(managedObjectContext)]) {
//        context = [delegate managedObjectContext];
//        
//    }
//    return context;
//}

-(NSManagedObjectContext *)managedObjectcontext{
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)AddAction:(id)sender {
    
    operation = '+';
}

- (IBAction)DivideAction:(id)sender {
    operation = '/';

}

- (IBAction)SubstractAction:(id)sender {
    operation = '-';

}

- (IBAction)MultiplyAction:(id)sender {
    operation = '*';

}

- (IBAction)calculateAction:(id)sender {
    secondViewController *secondView = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    secondView.selectedOperation = operation;
    //[self.navigationController pushViewController:locationController animated:YES];
    [self.navigationController pushViewController:secondView animated:YES];
}
@end
