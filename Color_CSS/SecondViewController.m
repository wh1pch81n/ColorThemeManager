//
//  SecondViewController.m
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#import "SecondViewController.h"
#import "StyleType.h"
#import "Color_CSS-Swift.h"

UIColor *colorWithStyleKey(DHColorKey key) {
	return [DH_StyleKitManager colorWithStyleKey:key];
}

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *secondView;
@property (weak, nonatomic) IBOutlet UILabel *secondviewSubtitle;

@end

@implementation SecondViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[DH_StyleKitManager setStyle:[CloudStyleKit new]];

	// Do any additional setup after loading the view, typically from a nib.
	_secondView.textColor = [DH_StyleKitManager colorWithStyleKey:DHColorKey_Theme];
	_secondView.textColor = [DH_StyleKitManager colorWithStyleKey:DHColorKey_DarkRed];
	self.view.backgroundColor = colorWithStyleKey(DHColorKey_LightRed);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
