//
//  secondViewController.h
//  coreDataDemo
//
//  Created by Student P_05 on 17/11/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface secondViewController : UIViewController{
    
    int result;
    NSArray *resultArray;

}
@property (strong, nonatomic) IBOutlet UILabel *operLAbel;
@property (strong, nonatomic) IBOutlet UITextField *numberOne;

@property (strong, nonatomic) IBOutlet UIView *arithLabel;

@property (strong, nonatomic) IBOutlet UITextField *numberTwo;
- (IBAction)EqualToAction:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

@property char selectedOperation;










@end
