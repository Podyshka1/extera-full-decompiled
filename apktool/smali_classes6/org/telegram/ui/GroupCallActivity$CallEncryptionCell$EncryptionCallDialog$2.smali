.class Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->animate(FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;FLjava/lang/Runnable;)V
    .locals 0

    .line 10320
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    iput p2, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->val$to:F

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 10323
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    iget v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->val$to:F

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->-$$Nest$fputprogress(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;F)V

    .line 10324
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->-$$Nest$fgetwindowView(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10325
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$2;->val$done:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 10326
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
