//
//  MoreSegue.m
//  CustomSegueDemo
//
//  Created by Basilio García Castillo on 19/03/13.
//  Copyright (c) 2013 Basilio García. All rights reserved.
//

#import "MoreSegue.h"
#import "MoreSegueViewController.h"
@implementation MoreSegue
-(void) perform
{
    UIViewController *src = (UIViewController *) self.sourceViewController;
    UIViewController *dst = (UIViewController *) self.destinationViewController;
    if(secondSegueType == 1)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromTop animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
        
        
    }
    else if(secondSegueType == 2)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
    }
    else if(secondSegueType == 3)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
    }
    else if(secondSegueType == 4)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionCurlUp animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
    }
    else if(secondSegueType == 5)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionCurlDown animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
    }
    else if(secondSegueType == 6)
    {
        
        [UIView transitionWithView:src.navigationController.view duration:0.8 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
            [src.navigationController pushViewController:dst animated:NO];
        }
                        completion:NULL];
    }
    
}

@end
