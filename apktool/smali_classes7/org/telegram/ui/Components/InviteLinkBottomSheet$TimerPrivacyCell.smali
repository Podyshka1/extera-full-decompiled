.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;
.super Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerPrivacyCell"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

.field timer:Z

.field timerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    .line 1138
    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1123
    new-instance p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell$1;-><init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timerRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timerRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1144
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->runTimer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1149
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1150
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->cancelTimer()V

    return-void
.end method

.method public runTimer()V
    .locals 3

    .line 1158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->cancelTimer()V

    .line 1159
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timer:Z

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$TimerPrivacyCell;->timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
