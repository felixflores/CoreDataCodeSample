//
//  FFDataPersistence+FetchResultsController.h
//  CoreDataExample
//
//  Created by Felix Flores on 12/18/12.
//  Copyright (c) 2012 felixflor.es. All rights reserved.
//

#import "FFDataPersistence.h"

@interface FFDataPersistence (FetchResultsController)
- (NSFetchedResultsController *)fetchResultsControllerWithFetchRequest:(NSFetchRequest *)fetchRequest
                                                          andCacheName:(NSString *)cacheName;
@end
