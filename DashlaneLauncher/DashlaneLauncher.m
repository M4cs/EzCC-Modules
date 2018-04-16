#import "DashlaneLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation DashlaneLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.DashlaneLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.DashlaneLauncher = selected;
	[super refreshState];
    [self dashlane];
}

- (void)dashlane {
  NSString *bundleID = @"com.dashlane.dashlanephonefinal";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.DashlaneLauncher = NO;
		
}
@end
