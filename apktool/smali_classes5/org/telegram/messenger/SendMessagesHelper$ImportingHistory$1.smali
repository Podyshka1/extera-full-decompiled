.class Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->initImport(Lorg/telegram/tgnet/TLRPC$InputFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;


# direct methods
.method public static synthetic $r8$lambda$yJtQqwUPRCOTkM9NBNtUAT8ddL4(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->lambda$run$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iput-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 252
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_historyImport;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 253
    iget-object p2, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_historyImport;

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_historyImport;->id:J

    iput-wide v3, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->importId:J

    .line 254
    iget-object p1, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    iget-object p2, p2, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->historyPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v3, p3, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 256
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->-$$Nest$mstartImport(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;)V

    .line 259
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->-$$Nest$fputlastUploadTime(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;J)V

    .line 260
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadMedia:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_1

    .line 261
    iget-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p3, p3, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p3}, Lorg/telegram/messenger/BaseController;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->uploadMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/high16 v3, 0x4000000

    invoke-virtual {p3, v0, v2, v1, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 264
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->-$$Nest$fgetimportingHistoryMap(Lorg/telegram/messenger/SendMessagesHelper;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v3, v0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 265
    iget-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-object p1, p1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->historyImportProgressChanged:I

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;

    iget-wide v3, v3, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v1

    const/4 p2, 0x2

    aput-object p3, v4, p2

    invoke-virtual {p1, v0, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/SendMessagesHelper$ImportingHistory$1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_initHistoryImport;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
