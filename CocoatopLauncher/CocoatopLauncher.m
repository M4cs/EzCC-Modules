#import "CocoatopLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation CocoatopLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.CocoatopLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.CocoatopLauncher = selected;
	[super refreshState];
    [self cocoa];
}

- (void)cocoa {
  NSString *bundleID = @"ru.domo.CocoaTop";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.CocoatopLauncher = NO;
		
}
@end
