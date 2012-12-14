//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___


-(id) init{
	self = [super init];
	if (self) {
        //        //初始化自定义类型的属性
        //		ImgSeq *seq=[[ImgSeq alloc] init];
        //        self.imgSeq=seq;
	}
	return self;
}

#pragma mark JSON
//重写initWithJSONStr方法
-(id) initWithJSONStr:(NSString*)str{
	self = [super initWithJSONStr:str];
	if (self) {
        //从JSON字符串加载数据之后处理
        //NSDictionary *dict=(NSDictionary*)[self valueForKey:@"imgSeq"];
		//self.imgSeq=[[ImgSeq alloc] initWithDicionary:dict];
	}
	return self;
}

#pragma mark FMDB
//重写initWithJSONStr方法
-(id) initWithFMResultSet:(FMResultSet *)set{
	self = [super initWithFMResultSet:set];
	if (self) {
        //从数据库表中加载数据之后处理
	}
	return self;
}

@end
