//
//  PrimeNumberVC.m
//  PrimeNumber
//
//  Created by Lorenzo Jose on 7/18/13.
//  Copyright (c) 2013 Lorenzo Jose. All rights reserved.
//

#import "PrimeNumberVC.h"
#import "TryPrimeNumberVC.h"

@interface PrimeNumberVC ()

@end

@implementation PrimeNumberVC

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
    
    self.navigationItem.title = @"WELCOME";
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    
    
    _textView.text = @"A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself. A natural number greater than 1 that is not a prime number is called a composite number. For example, 5 is prime because only 1 and 5 evenly divide it, whereas 6 is composite because it has the divisors 2 and 3 in addition to 1 and 6.";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)TryIt:(id)sender{
    
    _tryPrimeVC = [[TryPrimeNumberVC alloc]initWithNibName:@"TryPrimeNumberVC" bundle:nil];
    
    [self.navigationController pushViewController:_tryPrimeVC animated:YES];
    
}

-(void) doSomething {
    NSString *str = [[NSString alloc] initWithString:@"This is a string"];
}

@end
