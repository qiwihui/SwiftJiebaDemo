//
//  iosjiebaWrapper.h
//  SwiftJiebaDemo
//
//  Created by Qiwihui on 1/15/19.
//  Copyright © 2019 Qiwihui. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JiebaWrapper : NSObject

- (void) objcJiebaInit: (NSString *) dictPath forPath: (NSString *) hmmPath forDictPath: (NSString *) userDictPath;
- (void) objcJiebaCut: (NSString *) sentence toWords: (NSMutableArray *) words;

@end
