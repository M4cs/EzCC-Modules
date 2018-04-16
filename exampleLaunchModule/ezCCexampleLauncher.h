#import <ControlCenterUIKit/CCUIAppLauncherModule.h>

// @interface SCCPreferencesModule : CCUIToggleModule
// @property (nonatomic, assign, readwrite) BOOL fakeEnabledSetting;
// @end

@interface SCCMusicModule : CCUIAppLauncherModule
@property (nonatomic,copy) NSString * applicationIdentifier;
@property (nonatomic,copy) NSString * appID;
@property (nonatomic,copy) NSString * appName;
@end
