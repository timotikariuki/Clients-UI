//
//  Document.h
//  Clients
//
//  Created by star on 5/18/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Document : NSObject

@property (nonatomic, strong) NSString* fileName;
@property (nonatomic, strong) NSString* fileType;
@property (nonatomic, strong) NSString* date;

- (instancetype) initWithName:(NSString*)fileName type:(NSString*)fileType date:(NSString*)date;

@end

NS_ASSUME_NONNULL_END
