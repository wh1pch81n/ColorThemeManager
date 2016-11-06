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
	[DH_StyleKitManager setStyle:[CloudStyleKit new]];
	// Do any additional setup after loading the view, typically from a nib.
	
	_firstView.textColor = [DH_StyleKitManager style].color.red;
	self.view.backgroundColor = [DH_StyleKitManager style].color.green;
	_firstView.font = [DH_StyleKitManager style].font.h1;
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
