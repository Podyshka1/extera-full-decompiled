.class Lorg/telegram/ui/PassportActivity$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PassportActivity$ErrorRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PassportActivity$3;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PassportActivity$3;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PassportActivity$3;Ljava/lang/Runnable;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$3$2;->this$1:Lorg/telegram/ui/PassportActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$3$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1161
    const-string v0, "PHONE_VERIFICATION_NEEDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1162
    iget-object p1, p0, Lorg/telegram/ui/PassportActivity$3$2;->this$1:Lorg/telegram/ui/PassportActivity$3;

    iget-object v0, p1, Lorg/telegram/ui/PassportActivity$3;->this$0:Lorg/telegram/ui/PassportActivity;

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$3$2;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/PassportActivity;)Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;

    move-result-object v5

    const/4 v1, 0x1

    move-object v4, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PassportActivity;->-$$Nest$mstartPhoneVerification(Lorg/telegram/ui/PassportActivity;ZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/PassportActivity$ErrorRunnable;Lorg/telegram/ui/PassportActivity$PassportActivityDelegate;)V

    return-void

    :cond_0
    move-object v4, p0

    .line 1164
    iget-object p1, v4, Lorg/telegram/ui/PassportActivity$3$2;->this$1:Lorg/telegram/ui/PassportActivity$3;

    iget-object p1, p1, Lorg/telegram/ui/PassportActivity$3;->this$0:Lorg/telegram/ui/PassportActivity;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/PassportActivity;->-$$Nest$mshowEditDoneProgress(Lorg/telegram/ui/PassportActivity;ZZ)V

    return-void
.end method
