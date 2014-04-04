//
//  NHHomeVC.m
//  NooraHealth
//
//  Created by WM on 4/4/14.
//  Copyright (c) 2014 Noora Health. All rights reserved.
//

#import "NHHomeVC.h"

@interface NHHomeVC ()

@property NSArray *buttonsOnScreenArray;
@property NSArray *activeModulesArray;

@end

@implementation NHHomeVC

@synthesize buttonsOnScreenArray;
@synthesize activeModulesArray;

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
	self.title = @"Care Companion for Heart Failure";
	
	[self setupButtons];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - View Setup Methods
- (void)setupButtons
{
//	activeModulesArray = @[@"Intro & How To", ];
//	for(
	
}

#pragma mark - User Action Methods

@end
