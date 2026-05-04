.class Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PopupNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    .line 133
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
