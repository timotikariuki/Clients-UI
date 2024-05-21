//
//  PaddingLabel.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaddingLabel : UILabel

@property (nonatomic, assign) IBInspectable CGFloat topInset;
@property (nonatomic, assign) IBInspectable CGFloat bottomInset;
@property (nonatomic, assign) IBInspectable CGFloat leftInset;
@property (nonatomic, assign) IBInspectable CGFloat rightInset;

@end

NS_ASSUME_NONNULL_END
