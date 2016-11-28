//
//  ViewController.h
//  coreDataDemo
//
//  Created by Student P_05 on 17/11/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "secondViewController.h"
@interface ViewController : UIViewController{
    
    char operation;
}

- (IBAction)AddAction:(id)sender;
- (IBAction)DivideAction:(id)sender;
- (IBAction)SubstractAction:(id)sender;
- (IBAction)MultiplyAction:(id)sender;
- (IBAction)calculateAction:(id)sender;

@end

