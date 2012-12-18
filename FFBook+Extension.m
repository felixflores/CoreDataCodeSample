//
//  FFBook+Extension.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFBook+Extension.h"

@implementation FFBook (Extension)
- (id)initWithInfo:(NSDictionary *)info
{
    self = [super initInDataPersistenceContext];
    
    if (self) {
        [self setTitle:info[FFBookTitle]];
        [self setDesc:info[FFBookDescription]];
    }
    
    return self;
}
@end
