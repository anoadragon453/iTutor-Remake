//
//  InboxViewCell.h
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/15/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InboxViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *senderLabel;
@property (strong, nonatomic) IBOutlet UILabel *subjectLabel;

@end
