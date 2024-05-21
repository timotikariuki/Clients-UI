//
//  Communication.h
//  Clients
//
//  Created by star on 5/21/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Communication : NSObject

@property(nonatomic, strong) NSString *imageName;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *date;
@property(nonatomic, strong) NSString *from;
@property(nonatomic, strong) NSString *message;

- (instancetype) initWithTitle:(NSString*)title date:(NSString*)date from:(NSString*)from message:(NSString*)message iconName:(NSString*)imageName;

@end

NS_ASSUME_NONNULL_END
