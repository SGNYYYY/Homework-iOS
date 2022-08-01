#import "Student.h"
@implementation Student

-(void)study:(CGFloat)time {
    NSString *s = @"name";
    NSLog(@"%@",s);
    NSLog(@"This student has studied %.2f hours.",time);
}
