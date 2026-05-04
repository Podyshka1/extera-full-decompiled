.class public abstract synthetic Landroidx/transition/Transition$TransitionNotification$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/transition/Transition$TransitionNotification;

    return-void
.end method

.method public static synthetic lambda$static$0(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2697
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic lambda$static$1(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2703
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    return-void
.end method

.method public static synthetic lambda$static$2(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2709
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    return-void
.end method
