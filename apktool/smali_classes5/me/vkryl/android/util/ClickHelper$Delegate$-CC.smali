.class public abstract synthetic Lme/vkryl/android/util/ClickHelper$Delegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$forceEnableVibration(Lme/vkryl/android/util/ClickHelper$Delegate;)Z
    .locals 0

    .line 58
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$getLongPressDuration(Lme/vkryl/android/util/ClickHelper$Delegate;)J
    .locals 2

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static $default$ignoreHapticFeedbackSettings(Lme/vkryl/android/util/ClickHelper$Delegate;FF)Z
    .locals 0

    .line 55
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$needLongPress(Lme/vkryl/android/util/ClickHelper$Delegate;FF)Z
    .locals 0

    .line 43
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onClickTouchDown(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)V
    .locals 0

    .line 61
    return-void
.end method

.method public static $default$onClickTouchMove(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)V
    .locals 0

    .line 62
    return-void
.end method

.method public static $default$onClickTouchUp(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)V
    .locals 0

    .line 63
    return-void
.end method

.method public static $default$onLongPressCancelled(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)V
    .locals 0

    .line 51
    return-void
.end method

.method public static $default$onLongPressFinish(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)V
    .locals 0

    .line 52
    return-void
.end method

.method public static $default$onLongPressMove(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 50
    return-void
.end method

.method public static $default$onLongPressRequestedAt(Lme/vkryl/android/util/ClickHelper$Delegate;Landroid/view/View;FF)Z
    .locals 0

    .line 48
    const/4 p0, 0x0

    return p0
.end method
