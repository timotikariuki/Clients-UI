//
//  CustomButton.m
//  Clients
//
//  Created by star on 5/17/24.
//

#import "CustomButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomButton

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
        
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, self.bottomBorderColor.CGColor);
    CGContextSetLineWidth(context, 3.0);
    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect)-3);
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect)-3);
    CGContextStrokePath(context);
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

-(void)setup {
    self.bottomBorderColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.0f];
}

- (void)setSelected:(BOOL)isSelected {
    if (isSelected) {
        self.bottomBorderColor = [UIColor colorWithRed:84/255.0f green:178/255.0f blue:211/255.0f alpha:1.0f];
        UIColor *tintColor = [UIColor colorWithRed:84/255.0f green:178/255.0f blue:211/255.0f alpha:1.0f];
        [self setTintColor:tintColor];
    } else {
        self.bottomBorderColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.0f];
        UIColor *tintColor = [UIColor colorWithRed:146/255.0f green:146/255.0f blue:163/255.0f alpha:1.0f];
        [self setTintColor:tintColor];
    }
    [self setNeedsDisplay];
}

@end
