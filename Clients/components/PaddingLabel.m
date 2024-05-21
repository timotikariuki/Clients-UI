//
//  PaddingLabel.m
//  Clients
//
//  Created by star on 5/21/24.
//

#import "PaddingLabel.h"

@implementation PaddingLabel


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.topInset = 6.0;
    self.bottomInset = 6.0;
    self.leftInset = 12.0;
    self.rightInset = 12.0;
}

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = UIEdgeInsetsMake(self.topInset, self.leftInset, self.bottomInset, self.rightInset);
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

- (CGSize)intrinsicContentSize {
    CGSize size = [super intrinsicContentSize];
    size.width += self.leftInset + self.rightInset;
    size.height += self.topInset + self.bottomInset;
    return size;
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize adjustedSize = [super sizeThatFits:size];
    adjustedSize.width += self.leftInset + self.rightInset;
    adjustedSize.height += self.topInset + self.bottomInset;
    return adjustedSize;
}

@end
