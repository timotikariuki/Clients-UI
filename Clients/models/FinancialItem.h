//
//  FinancialItem.h
//  Clients
//
//  Created by star on 6/12/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSInteger, FinancialStatus) {
    Unpaid,
    Paid,
    Credit
};


@interface FinancialItem : NSObject

@property (nonatomic, strong) NSString* date;
@property (nonatomic, strong) NSString* number;
@property (nonatomic, strong) NSString* employee;
@property (nonatomic, strong) NSString* appointment;
@property (nonatomic, assign) FinancialStatus status;
@property (nonatomic, assign) CGFloat amount;

- (instancetype) initWithNumber:(NSString*)number date:(NSString*)date employee:(NSString*)employee appointment:(NSString*)appointment status:(FinancialStatus)status amount:(CGFloat)amount;



@end

NS_ASSUME_NONNULL_END
