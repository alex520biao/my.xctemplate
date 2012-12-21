//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

+ (id)loadWithNibName:(NSString*)nibName {
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
    ___FILEBASENAMEASIDENTIFIER___ *view=[nibView objectAtIndex:0];
    if (view) {
        //view上控件的初始化
    }
    return view;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
