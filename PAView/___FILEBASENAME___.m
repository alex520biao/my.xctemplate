//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

+(___FILEBASENAMEASIDENTIFIER___*)pathAnimationView{
	return [[[___FILEBASENAMEASIDENTIFIER___ alloc] initWithFrame:CGRectMake(0, 0, 100, 100)] autorelease];
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

-(void)layoutSubviews{
    [super layoutSubviews];
    
    //当前view首次在appear时调用此方法: 此时view才开启动画，这样可以节省内存
    if ([[self.layer animationKeys] count]==0) {
        [self startMoving];
    }
}

#pragma mark PathAnimationProtocol
-(void)startMoving{
    [self.layer addAnimation:[self pathAnimation] forKey:@"cloudPathAnimation"];//圆周运动
	[self.layer addAnimation:[self fadeInOutAnimation] forKey:@"fadeInOutAnimation"];//阴影转动效果
	
	self.layer.needsDisplayOnBoundsChange = YES;
	[UIView setAnimationCurve:UIViewAnimationCurveLinear];
	self.layer.position = CGPointMake(100, 100);
	self.layer.opacity = .4;
}

//初始化路径动画
-(CAAnimation*)pathAnimation {
    CAKeyframeAnimation* animation;
    animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    CGMutablePathRef path =[self createPath];
	animation.path = path;
	CGPathRelease(path);
	animation.duration = 5;
	animation.repeatCount = 10000;
 	animation.calculationMode = kCAAnimationPaced;
	return animation;
}

//初始化path路径
-(CGMutablePathRef)createPath{
	CGMutablePathRef path = CGPathCreateMutable();
	CGPathAddEllipseInRect(path, NULL, CGRectMake(120, 100, 200, 150));//椭圆路径，关键步骤。
    return path;
}

//初始化其他动画
-(CAAnimation*)fadeInOutAnimation{
	CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
	animation.duration = 2;
	animation.repeatCount =10000;
	animation.toValue = [NSNumber numberWithFloat:.1];
	animation.autoreverses = YES;
	return animation;
}


@end
