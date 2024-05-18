//
//  CustomButton.h
//  Clients
//
//  Created by star on 5/17/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomButton : UIButton

@property (nonatomic, strong) UIColor *bottomBorderColor;

- (void)setSelected:(BOOL)isSelected;

@end

NS_ASSUME_NONNULL_END
