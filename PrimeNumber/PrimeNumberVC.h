//
//  PrimeNumberVC.h
//  PrimeNumber
//
//  Created by Lorenzo Jose on 7/18/13.
//  Copyright (c) 2013 Lorenzo Jose. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TryPrimeNumberVC.h"

@interface PrimeNumberVC : UIViewController {
    
}

@property (nonatomic, strong) IBOutlet UITextView *textView;

@property (nonatomic, strong) IBOutlet UIButton *button;

@property (nonatomic, strong)          TryPrimeNumberVC *tryPrimeVC;


-(IBAction)TryIt:(id)sender;
    


@end
