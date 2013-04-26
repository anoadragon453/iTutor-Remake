//
//  CustomSegue.m
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 18/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import "CustomSegue.h"
#import "QuartzCore/QuartzCore.h"
#import "CustomSegueDemoViewController.h"

@implementation CustomSegue


-(void) perform{
    
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];

    CATransition* transition = [CATransition animation];
    transition.duration = .50;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionPush; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
    
    
    transition.subtype = kCATransitionFromTop;;
    segueType = 0;
    
    
    [sourceViewController.navigationController.view.layer addAnimation:transition
                                                            forKey:kCATransition];
    
    [sourceViewController.navigationController pushViewController:destinationController animated:NO];
    
    
}


@end
