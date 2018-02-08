#import "SecondViewController.h"
#import "RootViewController.h"

@implementation SecondViewController
@synthesize sendValue;
- (void)viewDidLoad {
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];

    returnButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [returnButton setTitle:@"Back" forState:UIControlStateNormal];
	[returnButton addTarget:self action:@selector(returnButtonAction) forControlEvents:UIControlEventTouchUpInside];
	[returnButton setTranslatesAutoresizingMaskIntoConstraints:NO];
	[self.view addSubview: returnButton];

    NSLayoutConstraint *returnButtonLeft = [NSLayoutConstraint constraintWithItem:returnButton attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:10];
	NSLayoutConstraint *returnButtonTop = [NSLayoutConstraint constraintWithItem:returnButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
	
	NSLayoutConstraint *returnButtonHeight = [NSLayoutConstraint constraintWithItem:returnButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];
    NSLayoutConstraint *returnButtonWidth = [NSLayoutConstraint constraintWithItem:returnButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];


	[self.view addConstraints:@[returnButtonLeft, returnButtonTop]];
	[returnButton addConstraints:@[returnButtonHeight, returnButtonWidth]];

    myLabel = [[UILabel alloc]init];
    myLabel.backgroundColor = [UIColor redColor];
    myLabel.text = sendValue;
    [myLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview: myLabel];

    NSLayoutConstraint *myLabelCenterY = [NSLayoutConstraint
                                                constraintWithItem:myLabel  
                                                attribute:NSLayoutAttributeCenterY
                                                relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                                attribute:NSLayoutAttributeCenterY
                                                multiplier:1
                                                constant:0];

    NSLayoutConstraint *myLabelLeft = [NSLayoutConstraint
                                                constraintWithItem:myLabel  
                                                attribute:NSLayoutAttributeLeft
                                                relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                                attribute:NSLayoutAttributeLeft
                                                multiplier:1
                                                constant:10];
    
    NSLayoutConstraint *myLabelRight = [NSLayoutConstraint
                                                constraintWithItem:myLabel  
                                                attribute:NSLayoutAttributeRight
                                                relatedBy:NSLayoutRelationEqual
                                                toItem:self.view
                                                attribute:NSLayoutAttributeRight
                                                multiplier:1
                                                constant:-10];
    
    NSLayoutConstraint *myLabelHeight = [NSLayoutConstraint
                                                constraintWithItem:myLabel  
                                                attribute:NSLayoutAttributeHeight
                                                relatedBy:NSLayoutRelationEqual
                                                toItem:nil
                                                attribute:NSLayoutAttributeNotAnAttribute
                                                multiplier:1
                                                constant:40];

    [self.view addConstraints:@[myLabelCenterY, myLabelLeft, myLabelRight]];
    [myLabel addConstraints:@[myLabelHeight]];


}

- (void)returnButtonAction {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
