//
//  PathFinderServiceProvider.m
//  pathfinder
//
//  Created by Ivan Burlakov on 26.09.12.
//

#import "PathFinderServiceProvider.h"

@implementation PathFinderServiceProvider

- (id) init{
    self = [super init];
    
    if(self)
    {
        
    }
    
    return self;
}

- (void)copyPath:(NSPasteboard *)pboard
        userData:(NSString *)userData
           error:(NSString **)error {
    
    if([[pboard types] containsObject:NSFilenamesPboardType]){
        NSArray* fileArray=[pboard propertyListForType:NSFilenamesPboardType];
        
        if ([fileArray count] > 0)
        {
            NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];

            [pasteboard clearContents];

            [pasteboard writeObjects:fileArray];
        
        }
    }
    
    exit(0);
}

@end
