//
//  FirstViewController.m
//  Color_CSS
//
//  Created by Derrick Ho on 11/5/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#import "FirstViewController.h"
#import "Color_CSS-Swift.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[DH_StyleKitManager setStyle:[AerisStyleKit new]];
	// Do any additional setup after loading the view, typically from a nib.
	
	_firstView.textColor = [DH_StyleKitManager colorWithStyleKey:DHColorKey_Theme];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
