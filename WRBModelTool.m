//
//  WRBModelTool.m
//  XMLDemo
//
//  Created by qianfeng on 15/9/4.
//  Copyright (c) 2015年 wrb. All rights reserved.
//

#import "WRBModelTool.h"

@implementation WRBModelTool

/** XML解析 */
+(void)createModelWithElement:(GDataXMLElement *)element modelName:(NSString *)modelName
{
    printf("\n@interface %s :NSObject\n",modelName.UTF8String);
    for (GDataXMLElement *subElement in element.children) {
        printf("@property (nonatomic, copy) NSString *%s;\n",subElement.name.UTF8String);
    }
    printf("@end\n");
    for (GDataXMLElement *subElement in element.children) {
        printf("model.%s = [[[e elementsForName:@\"%s\"] firstObject] stringValue];\n",subElement.name.UTF8String,subElement.name.UTF8String);
    }
}

@end
