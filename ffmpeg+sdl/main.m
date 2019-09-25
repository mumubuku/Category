//
//  main.m
//  ffmpeg+sdl
//
//  Created by soda on 2019/9/25.
//  Copyright © 2019 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "avformat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        av_register_all();
    }
    return 0;
}
