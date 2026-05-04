.class Lorg/telegram/ui/GroupCallActivity$33;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;)V
    .locals 0

    .line 5243
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$33;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    .line 5246
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 5247
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 5248
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$33;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mcheckContentOverlayed(Lorg/telegram/ui/GroupCallActivity;)V

    :cond_0
    return-void
.end method
