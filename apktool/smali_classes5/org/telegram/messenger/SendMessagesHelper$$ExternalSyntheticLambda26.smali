.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public final synthetic f$3:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$3:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$2:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda26;->f$3:Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$BXla6lNM4dwQsKa6KVku1qWG0Yk(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputMedia;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method
