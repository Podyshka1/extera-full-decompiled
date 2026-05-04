.class public final synthetic Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->$r8$lambda$py_7XtsRq6dbXG5Fo5qQWURGAdw(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
