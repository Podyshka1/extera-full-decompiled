.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda175;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$S4t1E0Pl1fu7Gw05iYV7fH8YF3A(Lorg/telegram/messenger/MessagesController;Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
