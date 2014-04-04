//
//  NHModuleVC.m
//  NooraHealth
//
//  Created by WM on 4/4/14.
//  Copyright (c) 2014 Noora Health. All rights reserved.
//

#import "NHModuleVC.h"

@interface NHModuleVC ()

@property NHModule *currentModule;

@end

@implementation NHModuleVC

@synthesize currentModule;

- (id)initWithModule:(NHModule *)module
{
    self = [super init];
    if (self) {
		self.currentModule = module;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
	self.title = currentModule.title;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
