//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders

@end

@implementation Passenger
// 去订票
- (void)bookTicket:(NSNumber*)idNumber name:(NSString*)name{
    Orders *order = [Orders newOrder:idNumber name:name];
    // 插入未出行订单
    [self.notTravelOrders addObject:order];
}
// 去检票
- (void)checkTicket:(NSNumber*)orderId{
    NSMutableArray *copyArray = [NSMutableArray arrayWithArray:self.notTravelOrders];  
    for (Orders *order in copyArray) {  
        if ([[order orderId] isEqualToString:orderId]) { 
            // 从未出行订单中删除该订单 
            [self.notTravelOrders removeObject:order];
            // 在历史订单中加入该订单
            [self.historyOrders addObject:order];  
            break;
        }  
    }  
}
@end
