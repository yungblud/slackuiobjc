#import "RootViewController.h"
#import "SecondViewController.h"

@implementation RootViewController
- (void)viewDidLoad {
	[super viewDidLoad];

	self.view.backgroundColor = [UIColor whiteColor];
	
	nextButton = [UIButton buttonWithType: UIButtonTypeSystem];
	[nextButton setTitle:@"Next" forState:UIControlStateNormal];
	nextButton.enabled = NO;
	[nextButton addTarget:self action:@selector(secondViewMoveAction) forControlEvents:UIControlEventTouchUpInside];
	[nextButton setTranslatesAutoresizingMaskIntoConstraints:NO];
	[self.view addSubview: nextButton];

	NSLayoutConstraint *nextButtonRight = [NSLayoutConstraint constraintWithItem:nextButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:-10];
	NSLayoutConstraint *nextButtonTop = [NSLayoutConstraint constraintWithItem:nextButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
	
	NSLayoutConstraint *nextButtonHeight = [NSLayoutConstraint constraintWithItem:nextButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];
    NSLayoutConstraint *nextButtonWidth = [NSLayoutConstraint constraintWithItem:nextButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];

	[self.view addConstraints:@[nextButtonTop, nextButtonRight]];
	[nextButton addConstraints:@[nextButtonHeight, nextButtonWidth]];

	inputField = [[UITextField alloc]init];
	[inputField setTranslatesAutoresizingMaskIntoConstraints:NO];
	
	

}

- (void)secondViewMoveAction {
	SecondViewController *secondViewController = [[SecondViewController alloc] init];
	// secondViewController.sendValue = @"VALUE SEND!!";
	[self.navigationController pushViewController: secondViewController animated:YES];
}
@end
