.class public final synthetic Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_channel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_channel;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/TLRPC$TL_channel;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v1, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->$r8$lambda$kfOqH9CuKkE6en9KrSI9YAAYxck(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_channel;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
