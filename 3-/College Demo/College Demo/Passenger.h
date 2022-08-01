//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly) NSNumber *idNumber;
@property (nonatomic, readonly) NSNumber *orderId;
@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
@property (nonatomic, assign, readonly) Bool isOver18;
// 历史订单 （数组）
@property (nonatomic, copy) NSMutableArray *historyOrders;
// 未出行订单 （数组）
@property (nonatomic, copy) NSMutableArray *notTravelOrders;
// Function 方法
// 去订票
- (void)bookTicket:(NSNumber*)idNumber name:(NSString*)name;
// 去检票
- (void)checkTicket:(NSNumber*)orderId;
@end

NS_ASSUME_NONNULL_END
