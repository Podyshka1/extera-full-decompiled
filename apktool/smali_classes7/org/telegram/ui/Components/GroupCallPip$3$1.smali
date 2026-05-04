.class Lorg/telegram/ui/Components/GroupCallPip$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/GroupCallPip$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/GroupCallPip$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip$3;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$3$1;->this$1:Lorg/telegram/ui/Components/GroupCallPip$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 130
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_0

    .line 131
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$3$1;->this$1:Lorg/telegram/ui/Components/GroupCallPip$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip$3;->micRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x5a

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$3$1;->this$1:Lorg/telegram/ui/Components/GroupCallPip$3;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$3$1;->this$1:Lorg/telegram/ui/Components/GroupCallPip$3;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GroupCallPip$3;->pressed:Z

    :cond_1
    :goto_0
    return-void
.end method
