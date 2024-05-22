//
//  Note.h
//  Clients
//
//  Created by star on 5/22/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Note : NSObject

@property(nonatomic, strong) NSString *avatarName;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *by;
@property(nonatomic, strong) NSString *date;

- (instancetype) initWithTitle:(NSString*)title by:(NSString*)by date:(NSString*)date avatarName:(NSString*)avatarName;

@end

NS_ASSUME_NONNULL_END
