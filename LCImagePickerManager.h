//
//  LCImagePickerManager.h
//  XTMall
//
//  Created by LayChan on 2020/7/1.
//  Copyright © 2020 LayChan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^FinishBlock)(NSDictionary *dic, UIImage *image);

typedef void(^CancelBlock)(UIImagePickerController *picker);

@interface LCImagePickerManager : UIImagePickerController

@property(nonatomic, copy) FinishBlock finish;

@property(nonatomic, copy) CancelBlock cancel;

+ (LCImagePickerManager *)imagePickerWithType:(UIImagePickerControllerSourceType)sourceType didFinishPickImage:(FinishBlock)finishBlock didCancelPickImage:(CancelBlock)cancelBlock;

@end

NS_ASSUME_NONNULL_END
