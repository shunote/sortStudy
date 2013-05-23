//
//  SHUViewController.m
//  sortTest
//
//  Created by 酒井 秀平 on 2013/05/24.
//  Copyright (c) 2013年 shuketa. All rights reserved.
//

#import "SHUViewController.h"
#import "SHURecording.h"

@interface SHUViewController ()

@end

@implementation SHUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSComparisonResult compare_func(id obj1, id obj2, void* context)
{
    return [((SHURecording*)obj1).title localizedCaseInsensitiveCompare:((SHURecording*)obj2).title];
}

- (IBAction)sortTest:(id)sender {
    


    SHURecording *test1 = [[SHURecording alloc] init];test1.title = @"かきくけこ";
    SHURecording *test2 = [[SHURecording alloc] init];test2.title = @"ばびぶ";
    SHURecording *test3 = [[SHURecording alloc] init];test3.title = @"今日は";
    SHURecording *test4 = [[SHURecording alloc] init];test4.title = @"あいうえお";
    SHURecording *test5 = [[SHURecording alloc] init];test5.title = @"あ";

    NSMutableArray *recordingList = [NSMutableArray arrayWithCapacity:5];
    [recordingList addObject:test1];
    [recordingList addObject:test2];
    [recordingList addObject:test3];
    [recordingList addObject:test4];
    [recordingList addObject:test5];

    [recordingList sortUsingFunction:compare_func context: nil];

    for (SHURecording *tc in recordingList) {
        NSLog(@"%@", tc.title);
    }
    
    
}
@end
