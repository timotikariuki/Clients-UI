#import <UIKit/UIKit.h>


@interface DocumentsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray* arrDocuments;

@end

