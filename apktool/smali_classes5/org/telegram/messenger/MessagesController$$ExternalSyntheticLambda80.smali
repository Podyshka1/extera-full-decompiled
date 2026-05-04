.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda80;->f$0:Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda80;->f$0:Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$RxGx_AyM8j4OZZ8dDCV83cyO_co(Lorg/telegram/messenger/MessagesController$IsInChatCheckedCallback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
