//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

___IMPORTHEADER_cocoaTouchSubclass___

@class ___FILEBASENAMEASIDENTIFIER___;
@protocol ___FILEBASENAMEASIDENTIFIER___Delegate <NSObject>

- (void)delegate___FILEBASENAMEASIDENTIFIER___:(___FILEBASENAMEASIDENTIFIER___*)cell;
@end

@interface ___FILEBASENAMEASIDENTIFIER___ : ___VARIABLE_cocoaTouchSubclass___
@property (nonatomic, assign) id<___FILEBASENAMEASIDENTIFIER___Delegate> delegate;
/*
 调用代码
 if(delegate)
    [delegate delegate_ItemCell:self]; 
*/


@end
