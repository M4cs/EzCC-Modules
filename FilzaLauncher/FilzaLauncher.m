#import "FilzaLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation FilzaLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.FilzaLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.FilzaLauncher = selected;
	[super refreshState];
    [self filza];
}

- (void)filza {
  NSString *bundleID = @"com.tigisoftware.Filza";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.FilzaLauncher = NO;
		
}
@end
