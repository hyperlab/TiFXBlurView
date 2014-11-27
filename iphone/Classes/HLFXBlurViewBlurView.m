/**
 * TiFXBlurView
 *
 * Created by Jonatan Lundin
 * Copyright (c) 2014 Hyperlab AB. All rights reserved.
 */

#import "HLFXBlurViewBlurView.h"
#import "TiUtils.h"

@implementation HLFXBlurView

- (void)setLayerContents:(UIImage *)image
{
    [self.layer removeAllAnimations];

    CABasicAnimation *crossFade = [CABasicAnimation animationWithKeyPath:@"contents"];
    crossFade.duration = 0.300;
    crossFade.toValue = (id)image.CGImage;
    [self.layer addAnimation:crossFade forKey:@"animateContents"];

    self.layer.contents = (id)image.CGImage;
    self.layer.contentsScale = image.scale;
}

@end

@implementation HLFXBlurViewBlurView

- (HLFXBlurView *)blurView
{
    if (!_blurView) {
        _blurView = [[[HLFXBlurView alloc] initWithFrame:self.frame] retain];
        _blurView.contentMode = UIViewContentModeBottom;
        _blurView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        
        [_blurView setBlurEnabled:YES];
        [_blurView setUpdateInterval:5];
        
        self.autoresizesSubviews = YES;
        
        [self addSubview:_blurView];
    }
    return _blurView;
}

- (void)setBlurRadius_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setBlurRadius:[TiUtils floatValue:args]];
}
- (void)setBlurEnabled_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setBlurEnabled:[TiUtils boolValue:args]];
}
- (void)setBlurIterations_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setIterations:[TiUtils intValue:args]];
}
- (void)setBlurInterval_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setUpdateInterval:[TiUtils doubleValue:args]];
}
- (void)setBlurTintColor_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setTintColor:[[TiUtils colorValue:args] color]];
}
- (void)setBlurSource_:(id)args
{
    ENSURE_UI_THREAD_1_ARG(args);
    [[self blurView] setUnderlyingView:[(TiViewProxy *)args view]];
}


@end
