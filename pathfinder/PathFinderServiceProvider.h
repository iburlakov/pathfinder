//
//  PathFinderServiceProvider.h
//  pathfinder
//
//  Created by Ivan Burlakov on 26.09.12.
//

#import <Foundation/Foundation.h>

@interface PathFinderServiceProvider : NSObject {
    
    NSTextField* _output;
}


- (id) init;
- (void)copyPath:(NSPasteboard *)pboard userData:(NSString *)userData error:(NSString **)error;

@end
