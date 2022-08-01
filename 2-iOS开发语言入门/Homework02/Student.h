#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *major;
@property (nonatomic, assign) NSInteger age;

- (id)initWithName:(NSString*)name;
//表示学生学习了几个小时，打印出学习时间
- (void) study:(CGFloat )time;

@end


NS_ASSUME_NONNULL_END

