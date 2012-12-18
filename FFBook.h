//
//  FFBook.h
//  CoreDataExample
//
//  Created by Felix Flores on 12/17/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface FFBook : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * desc;

@end
