# Titanium FXBlurView Module

This is module is a thin wrapper around Nick Lockwood's [FXBlurView](https://github.com/nicklockwood/FXBlurView), with one addition,
cross-fading when the blurred layer is updated. 

## Supported properties

- **blurRadius**, values below 4 tend to look bad
- **blurSource**, the Titanium View or Window to use as blur source 
- **blurTintColor**, defaults to the tintColor of *blurSource* (can be set to `'transparent'`)
- **blurIterations**, higher values supposedly give better results 
- **blurInterval**, the refresh interval in seconds (defaults to 5)
- **blurEnabled**, defaults to true

## Usage

```
var blur = require('HL.FXBlurView'),
    view = blur.createBlurView({ 
      blurRadius: 10, 
      blurSource: win, 
      blurTintColor: 'green', 
      blurInterval: 1,
      zIndex: 10 
    });

win.add(view);
```

## Changes

**1.0.0** 
- Initial release

## Authors

**Jonatan Lundin**  
Web: http://hyperlab.se  
Twitter: @mr_lundis  