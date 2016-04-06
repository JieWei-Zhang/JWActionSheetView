//
//  JWActionSheetView.h
//  JWActionSheetView
//
//  Created by Vinhome on 16/4/5.
//  Copyright © 2016年 JW. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JWActionSheetView;

typedef void (^JWActionSheetViewDidSelectButtonBlock)(JWActionSheetView *actionSheetView, NSInteger buttonIndex);
@interface JWActionSheetView : UIView
+ (JWActionSheetView *)showActionSheetWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles handler:(JWActionSheetViewDidSelectButtonBlock)block;

- (instancetype)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles handler:(JWActionSheetViewDidSelectButtonBlock)block;

- (void)show;
- (void)dismiss;
@end
