//
//  TryPrimeNumberVC.h
//  PrimeNumber
//
//  Created by Lorenzo Jose on 7/18/13.
//  Copyright (c) 2013 Lorenzo Jose. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TryPrimeNumberVC : UIViewController <UITextFieldDelegate>
{
    
}

@property (nonatomic, strong) IBOutlet UITextField *textField;
@property (nonatomic, strong)          NSMutableArray     *primeNumArr;
@property (nonatomic, strong) IBOutlet UILabel     *resultLabel;



-(IBAction)Submit:(id)sender;
-(IBAction)Reset:(id)sender;




@end
