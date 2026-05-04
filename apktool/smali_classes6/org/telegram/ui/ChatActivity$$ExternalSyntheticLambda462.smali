.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda462;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendScheduledMessages;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_sendScheduledMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda462;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda462;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendScheduledMessages;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda462;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda462;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messages_sendScheduledMessages;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$Hz8bjEY9oPT8B5A4RPXhp4RxVZE(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_sendScheduledMessages;)V

    return-void
.end method
