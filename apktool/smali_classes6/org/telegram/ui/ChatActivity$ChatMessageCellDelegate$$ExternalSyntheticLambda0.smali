.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Cells/ChatMessageCell;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->$r8$lambda$teaTjVvQe713HJwvWRtE3wPi4rQ(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
