//
//  LCImagePickerManager.m
//  XTMall
//
//  Created by LayChan on 2020/7/1.
//  Copyright © 2020 LayChan. All rights reserved.
//

#import "LCImagePickerManager.h"

@interface LCImagePickerManager ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation LCImagePickerManager

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (LCImagePickerManager *)imagePickerWithType:(UIImagePickerControllerSourceType)sourceType didFinishPickImage:(FinishBlock)finishBlock didCancelPickImage:(CancelBlock)cancelBlock {
    LCImagePickerManager *imagePicker = [[LCImagePickerManager alloc] init];
    imagePicker.sourceType = sourceType;
    imagePicker.delegate = imagePicker;
    imagePicker.finish = finishBlock;
    imagePicker.cancel = cancelBlock;
    return imagePicker;
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    self.finish(info, image);
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    self.cancel(picker);
}

@end
