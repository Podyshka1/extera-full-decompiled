.class Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->startImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;


# direct methods
.method public static synthetic $r8$lambda$rrQUi2MD07VQn8a03laH48ec6M4(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V
    .locals 6

    .line 377
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->-$$Nest$fgetimportingHistoryMap(Lorg/telegram/messenger/SendMessagesHelper;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v1, v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 379
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 381
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-object v4, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v4, v4, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    aput-object p2, v5, v1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$3;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_messages_startHistoryImport;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
