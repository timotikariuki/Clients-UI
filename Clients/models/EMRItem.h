//
//  EMRItem.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, EMRType) {
    Consent,
    Treatment,
    Questionnaire
};

@interface EMRItem : NSObject

@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* date;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) EMRType type;

- (instancetype) initWithTitle:(NSString*)title date:(NSString*)date name:(NSString*)name type:(EMRType)type;


@end

NS_ASSUME_NONNULL_END
