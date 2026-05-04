.class Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->uploadMedia(ILorg/telegram/tgnet/TLRPC$InputFile;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

.field final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$GmEgBPqVzA_T8vgJMA6ykn6uS5k(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->lambda$run$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V
    .locals 5

    .line 416
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_1

    .line 417
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 418
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;-><init>()V

    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->item:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    .line 419
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->item:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->item:Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->document:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 421
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 422
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 423
    iget-object v2, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->emoji:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetItem;->emoji:Ljava/lang/String;

    .line 424
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    goto :goto_1

    .line 425
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    iget-boolean v0, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->animated:Z

    if-eqz v0, :cond_2

    .line 426
    const-string v0, "application/x-bad-tgsticker"

    iput-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;->mimeType:Ljava/lang/String;

    .line 428
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 415
    iget-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;->val$onFinish:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker$1;Lorg/telegram/tgnet/TLObject;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
