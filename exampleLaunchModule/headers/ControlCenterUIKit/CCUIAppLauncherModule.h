#import "CCUICAPackageDescription.h"
#import "CCUIContentModule-Protocol.h"

@interface CCUIAppLauncherModule : NSObject <CCUIContentModule>
@property (nonatomic,copy) NSString *applicationIdentifier;
@property (nonatomic,copy,readonly) UIImage *iconGlyph;
@property (nonatomic,readonly) UIViewController<CCUIContentModuleContentViewController> *contentViewController;
@property (nonatomic,readonly) UIViewController *backgroundViewController;
-(UIViewController<CCUIContentModuleContentViewController> *)contentViewController;

// For setting the target app, use the bundle ID;
-(void)setApplicationIdentifier:(NSString *)appID ;
-(NSString *)applicationIdentifier;

/*
 * If you're using an image as you icon gylph, Icon glyphs should have
 * a height of 48px for @2x and 72 for @3x, the width may be whatever.
 */

-(UIImage *)iconGlyph; // use an image that represents the glyph of the actual home screen icon.
@end
