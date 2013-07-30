//
//  TryPrimeNumberVC.m
//  PrimeNumber
//
//  Created by Lorenzo Jose on 7/18/13.
//  Copyright (c) 2013 Lorenzo Jose. All rights reserved.
//

#import "TryPrimeNumberVC.h"

@interface TryPrimeNumberVC ()

@end

@implementation TryPrimeNumberVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _primeNumArr = [[NSMutableArray alloc]init];
    
    int    p, d;
    BOOL isPrime;
    
    //Auto generate prime number from 1 to 1000
    
    for (p = 2; p <= 1000; ++p)
    {
        isPrime = YES;
        
        for (d = 2; d < p; ++d)
        {
            if (p % d == 0)
                isPrime = NO;
        }
        
        if (isPrime)
            NSLog(@"%i ", p);
        
        [_primeNumArr addObject:[NSNumber numberWithInt:p]];
    }
    
 
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldBeginEditing");
    textField.backgroundColor = [UIColor colorWithRed:220.0f/255.0f green:220.0f/255.0f blue:220.0f/255.0f alpha:1.0f];
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldDidBeginEditing");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Submit:(id)sender{
    
    //This method check the prime number of the enter number
    
    BOOL isPrime = YES;
    
    int p = [_textField.text intValue];
    int d;
    
//    do {
//        
//        _resultLabel.text = [NSString stringWithFormat:@"Number %i is not Prime Number", p];
//        
//    } while ((p == 1 || p == 0));
//  
  
    
    for (d = 2; d < p - 1; d++) {
        
        if (p % d == 0) {
            
            isPrime = NO;
            break;
        }
    }
    
    if (isPrime) {
        
        if ((p == 0 || p == 1)) {
            
             _resultLabel.text = [NSString stringWithFormat:@"Number %i is not Prime Number", p];
            
        } else {
            
             _resultLabel.text = [NSString stringWithFormat:@"Number %i is Prime Number", p];
            
        }
        
    } else {
        
            _resultLabel.text = [NSString stringWithFormat:@"Number %i is not Prime Number", p];
    }

    
}

-(IBAction)Reset:(id)sender{
    
    //This method to clear the value of textfield and label
    
    _textField.text = nil;
    _resultLabel.text = nil;
    
}

@end
