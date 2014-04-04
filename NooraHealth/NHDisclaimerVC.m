//
//  NHDisclaimerVC.m
//  NooraHealth
//
//  Created by WM on 4/4/14.
//  Copyright (c) 2014 Noora Health. All rights reserved.
//

#import "NHDisclaimerVC.h"

@interface NHDisclaimerVC ()

@end

@implementation NHDisclaimerVC

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

	self.view.backgroundColor = [UIColor whiteColor];
	
	[self setupButtons];
	
	UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 500, 450)];
	textView.center = CGPointMake(500, 400);
	textView.text = @"The Care Companion Program (CCP) provides content and services meant for health education and a source of information only. Going through any portion of this program does not take the place of medical advice, diagnosis, or treatment, and should not be considered any of the above. You should always speak to your doctor or other qualified healthcare provider about professional medical advice for diagnosis and treatment as it pertains to you or your loved ones’ health specifically. The content  and services on this application are not guaranteed to be safe, appropriate, or effective for you specifically, since CCP provides only general information on the most common issues, and you or your loved ones’ medical condition may be different. Please discuss with your healthcare provider about any personal health or medical questions or concerns.  If you have or suspect that you have a medical problem or condition, please contact a qualified health care professional. If you are in the United States and are experiencing a medical emergency, please call 911 or call for emergency medical help on the nearest telephone.";
	textView.editable = NO;
	textView.font = [UIFont systemFontOfSize:16];
	textView.layer.borderColor = [[UIColor blackColor] CGColor];
	textView.layer.borderWidth = 2.0;
	[self.view addSubview:textView];
	
	UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(450, 100, 150, 50)];
	titleLabel.text = @"Disclaimer";
	titleLabel.font = [UIFont boldSystemFontOfSize:24];
	[self.view addSubview:titleLabel];
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupButtons
{
	UIButton *acceptButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	acceptButton.frame = CGRectMake(300, 700, 100, 40);
	[acceptButton setTitle:@"Accept" forState:UIControlStateNormal];
	[acceptButton addTarget:self action:@selector(acceptButtonPressed) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:acceptButton];
	
	UIButton *rejectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	rejectButton.frame = CGRectMake(600, 700, 100, 40);
	[rejectButton setTitle:@"Reject" forState:UIControlStateNormal];
	[rejectButton addTarget:self action:@selector(rejectButtonPressed) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:rejectButton];
}

- (void)acceptButtonPressed
{
	
}

- (void)rejectButtonPressed
{
	
}

@end
