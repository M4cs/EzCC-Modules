#import "LastpassLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation LastpassLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.LastpassLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.LastpassLauncher = selected;
	[super refreshState];
    [self lastpass];
}

- (void)lastpass {
  NSString *bundleID = @"com.lastpass.ilastpass";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.LastpassLauncher = NO;
		
}
@end
