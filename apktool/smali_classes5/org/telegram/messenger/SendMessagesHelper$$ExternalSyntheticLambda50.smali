.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    invoke-static {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$xoeMeUC0kUWvIs18JOvmiifSUWs(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;)V

    return-void
.end method
