//
//  main.m
//  pathfinder
//
//  Created by Ivan Burlakov on 26.09.12.
//

#import <Cocoa/Cocoa.h>
#import "PathFinderServiceProvider.h"

int main(int argc, char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    PathFinderServiceProvider* serviceProvider = [[PathFinderServiceProvider alloc] init];
    NSRegisterServicesProvider(serviceProvider, @"pathfinder");
    [[NSRunLoop currentRunLoop] run];
    [serviceProvider release];
    
    [pool drain];
    
    return 0;
}
