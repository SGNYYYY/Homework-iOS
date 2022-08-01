
#import "Student.h"

int main (int argc, const char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Student *stu1 = [[Student alloc] init];
    [stu1 study:1.5];
    [stu1 release];
    [pool drain];
    return 0;
}
