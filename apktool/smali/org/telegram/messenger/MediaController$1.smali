.class Lorg/telegram/messenger/MediaController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1003
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetplayingMessageObject(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetplayingMessageObject(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetplayingMessageObject(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    return-void
.end method
