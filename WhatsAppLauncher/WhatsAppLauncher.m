#import "WhatsAppLauncher.h"
#import "spawn.h"

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation WhatsAppLauncher
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return nil;// not much point having this as it can confuse people
}

- (BOOL)isSelected {
	return self.WhatsAppLauncher;
}

- (void)setSelected:(BOOL)selected {
  self.WhatsAppLauncher = selected;
	[super refreshState];
    [self whatsapp];
}

- (void)whatsapp {
  NSString *bundleID = @"net.whatsapp.WhatsApp";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];
		self.WhatsAppLauncher = NO;
		
}
@end
