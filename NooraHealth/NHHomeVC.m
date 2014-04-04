//
//  NHHomeVC.m
//  NooraHealth
//
//  Created by WM on 4/4/14.
//  Copyright (c) 2014 Noora Health. All rights reserved.
//

#import "NHHomeVC.h"
#import "NHModuleVC.h"

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
	
	UILabel *introLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 800, 40)];
	introLabel.center = CGPointMake(600, introLabel.center.y); // TEMP
	introLabel.backgroundColor = [UIColor clearColor];
	introLabel.font = [UIFont systemFontOfSize:32];
	introLabel.text = @"Press a Button to Learn About Your Condition";
	[self.view addSubview:introLabel];
	
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
	// TEMP!
	activeModulesArray = @[@"Intro & How To", @"What is Heart Failure?", @"Symptom Mgmt", @"Low Salt Diet", @"Medications", @"Activity & Exercise", @"Personal Well Being", @"Smoking", @"Interactive: Mindfulness Meditation"];
	int i = 0;
	
	for(NSString *title in activeModulesArray)
	{
		UIButton *moduleButton = [UIButton buttonWithType:UIButtonTypeCustom];
		if(i < 5)
			moduleButton.frame = CGRectMake(20, 120 + (i * 100), 450, 90);
		else
			moduleButton.frame = CGRectMake(550, 120 + ((i-5) * 100), 450, 90);
		[moduleButton setTitle:title forState:UIControlStateNormal];
		moduleButton.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:37];
		moduleButton.titleLabel.textAlignment = NSTextAlignmentCenter;
		moduleButton.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
		[moduleButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
		moduleButton.layer.cornerRadius = 10.0;
		moduleButton.layer.borderColor = [[UIColor darkGrayColor] CGColor];
		moduleButton.layer.borderWidth = 0.5;
		moduleButton.layer.shadowColor = [[UIColor darkGrayColor] CGColor];
		moduleButton.layer.shadowOffset = CGSizeMake(5.0, 5.0);
		moduleButton.backgroundColor = [UIColor colorWithRed:0.0 green:180.0/255.0 blue:180.0/255.0 alpha:1.0];
		moduleButton.tag = i;
		[moduleButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:moduleButton];
		i++;
	}
}

#pragma mark - User Action Methods
- (void)buttonPressed:(id)selector
{
	NSLog(@"selector: %@", selector);
	NHModuleVC *moduleVC = [[NHModuleVC alloc] init]; // TODO: initWithModule
	[self.navigationController pushViewController:moduleVC animated:YES];
	
}

@end
