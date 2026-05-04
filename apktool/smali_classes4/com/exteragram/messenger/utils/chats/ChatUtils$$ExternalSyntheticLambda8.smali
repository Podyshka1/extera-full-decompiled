.class public final synthetic Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/exteragram/messenger/utils/chats/ChatUtils$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->$r8$lambda$s0B85LvTH-TSh4H75cP4h2cOGmc(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
