//
//  WRBModelTool.h
//  XMLDemo
//
//  Created by qianfeng on 15/9/4.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"

@interface WRBModelTool : NSObject

/** XML解析 */
+(void)createModelWithElement:(GDataXMLElement *)e modelName:(NSString *)modelName;

@end
