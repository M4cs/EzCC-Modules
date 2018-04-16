#import "InstagramLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation InstagramLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.InstagramLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.InstagramLauncher = selected;
	[super refreshState];
    [self instagram];
}

- (void)instagram {
  NSString *bundleID = @"com.burbn.instagram";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.InstagramLauncher = NO;
		
}
@end
