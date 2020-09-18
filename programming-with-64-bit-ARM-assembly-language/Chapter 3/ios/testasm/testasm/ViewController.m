//
//  ViewController.m
//  testasm
//
//  Created by valiha on 9/17/20.
//  Copyright © 2020 ARM asm. All rights reserved.
//

#import "ViewController.h"

extern void start( void );

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    start();
}


@end
