.class Lorg/telegram/ui/ProxySettingsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxySettingsActivity;->setProxyType(IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProxySettingsActivity;

.field final synthetic val$onTransitionEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->val$onTransitionEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 722
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$4;->val$onTransitionEnd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
