//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___
@synthesize delegate=_delegate;

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



#pragma mark customs
+ (id)loadWithNibName:(NSString*)nibName reuseIdentifier:(NSString *)reuseIdentifier{
    ___FILEBASENAMEASIDENTIFIER___ *cell =(___FILEBASENAMEASIDENTIFIER___*)[super loadWithNibName:nibName reuseIdentifier:reuseIdentifier];
    if (cell) {
        //cell上控件的初始化
    }
    return cell;
}

+(CGFloat)cellHeight{
    return 50;
}

+(CGFloat)cellWidth{
    return 50;
}

#pragma mark NSKeyValueObserving
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}

#pragma mark KVO-UpdateView
-(void)update_baseEntity_view{
    //update_baseEntity_view code
}

@end
