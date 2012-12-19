//
//  NSManagedObject+FFDataPersistence.m
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "NSManagedObject+FFDataPersistence.h"

@implementation NSManagedObject (FFDataPersistence)

- (id)initInDataPersistenceContext
{
    NSString *className = NSStringFromClass([self class]);
    self = [[FFDataPersistence sharedInstance] entityWithName:className];
    
    return self;
}

+ (NSEntityDescription *)entityDescription
{
    NSString *className = NSStringFromClass([self class]);
    return [[FFDataPersistence sharedInstance] entityDescriptionWithName:className];
}

- (void)save
{
    NSLog(@"Saving: \n%@", self);
    [[FFDataPersistence sharedInstance] saveContext];
}

- (void)saveAndWait
{
    NSLog(@"Saving and waiting: \n%@", self);
    [[FFDataPersistence sharedInstance] saveContextAndWait];
}

@end
