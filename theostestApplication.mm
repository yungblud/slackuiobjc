#import "RootViewController.h"
#import "SecondViewController.h"

@interface theostestApplication: UIApplication <UIApplicationDelegate> {
	UIWindow *_window;
	RootViewController *_viewController;
	SecondViewController *_secondViewController;
}
@property (nonatomic, retain) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@end

@implementation theostestApplication
@synthesize window = _window;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_viewController = [[RootViewController alloc] init];
	_secondViewController = [[SecondViewController alloc] init];

	self.navController = [[UINavigationController alloc] initWithRootViewController:_viewController];
	[self.navController setNavigationBarHidden:YES animated:YES];
	self.window.rootViewController = self.navController;
	[_window addSubview:_viewController.view];
	[_window addSubview:_secondViewController.view];
	[_window makeKeyAndVisible];
}

- (void)dealloc {
	[_viewController release];
	[_secondViewController release];
	[_window release];
	[super dealloc];
}
@end

// vim:ft=objc
