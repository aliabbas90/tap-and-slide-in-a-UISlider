//
//  ViewController.m
//  clickableSlider
//
//  Created by ITDEV on 28/03/2014.
//  Copyright (c) 2014 ali59a. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sliderTapped:)];
    [_slider addGestureRecognizer:tapGestureRecognizer];
    [_slider setMaximumValue:100];
    [_slider setMinimumValue:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)sliderTapped:(UIGestureRecognizer *)gestureRecognizer {
    
    CGPoint  pointTaped = [gestureRecognizer locationInView:self.view];
    
    
    CGPoint positionOfSlider = _slider.frame.origin;
    float widthOfSlider = _slider.frame.size.width;
    
    float newValue = ((pointTaped.x - positionOfSlider.x) * _slider.maximumValue) / widthOfSlider;
    
    [_slider setValue:newValue];
    
    //setValue
}


@end
