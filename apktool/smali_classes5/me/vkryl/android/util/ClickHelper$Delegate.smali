.class public interface abstract Lme/vkryl/android/util/ClickHelper$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/vkryl/android/util/ClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract forceEnableVibration()Z
.end method

.method public abstract getLongPressDuration()J
.end method

.method public abstract ignoreHapticFeedbackSettings(FF)Z
.end method

.method public abstract needClickAt(Landroid/view/View;FF)Z
.end method

.method public abstract needLongPress(FF)Z
.end method

.method public abstract onClickAt(Landroid/view/View;FF)V
.end method

.method public abstract onClickTouchDown(Landroid/view/View;FF)V
.end method

.method public abstract onClickTouchMove(Landroid/view/View;FF)V
.end method

.method public abstract onClickTouchUp(Landroid/view/View;FF)V
.end method

.method public abstract onLongPressCancelled(Landroid/view/View;FF)V
.end method

.method public abstract onLongPressFinish(Landroid/view/View;FF)V
.end method

.method public abstract onLongPressMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
.end method

.method public abstract onLongPressRequestedAt(Landroid/view/View;FF)Z
.end method
