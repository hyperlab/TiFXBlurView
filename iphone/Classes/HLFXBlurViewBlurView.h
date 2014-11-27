/**
 * TiFXBlurView
 *
 * Created by Jonatan Lundin
 * Copyright (c) 2014 Hyperlab AB. All rights reserved.
 */

#import "TiUIView.h"
#import "FXBlurView.h"

@interface HLFXBlurView : FXBlurView
@end

@interface HLFXBlurViewBlurView : TiUIView {
    HLFXBlurView *_blurView;
}

@end
