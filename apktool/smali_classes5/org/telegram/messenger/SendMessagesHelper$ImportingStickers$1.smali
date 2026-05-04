.class Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->startImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;


# direct methods
.method public static synthetic $r8$lambda$cv4tbiJSP7zbybwND9LPFGwcJv8(Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    .line 543
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->-$$Nest$fgetimportingStickersMap(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 545
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->shortName:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stickersImportProgressChanged:I

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object v4, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->shortName:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    aput-object p2, v5, v1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 549
    :goto_0
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz p1, :cond_2

    .line 550
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersImportComplete:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/NotificationCenter;->hasObservers(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 551
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 553
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingStickers$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_stickers_createStickerSet;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
