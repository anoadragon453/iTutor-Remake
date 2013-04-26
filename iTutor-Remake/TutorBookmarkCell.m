//
//  TutorBookmarkCell.m
//  iTutor-Remake
//
//  Created by Andrew Morgan on 4/16/13.
//  Copyright (c) 2013 Andrew Morgan. All rights reserved.
//

#import "TutorBookmarkCell.h"

@implementation TutorBookmarkCell
@synthesize bookmarkLabel = _bookmarkLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
