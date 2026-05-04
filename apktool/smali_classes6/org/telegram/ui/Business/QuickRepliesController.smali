.class public Lorg/telegram/ui/Business/QuickRepliesController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

.field private static final lockObjects:[Ljava/lang/Object;


# instance fields
.field public final currentAccount:I

.field private filtered:Ljava/util/ArrayList;

.field private loaded:Z

.field private loading:Z

.field public final localReplies:Ljava/util/ArrayList;

.field public final replies:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$0SopKeY1GOl54AXr2D-UZMj361g(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$updateTopMessage$16(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1A-yuHVelo9MjPdUJNcZ33KQesk(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$saveToCache$4(Lorg/telegram/messenger/MessagesStorage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oJMlKOo3dwC-btPYrmUJoexMlI(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$17(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4V4SUz9nYOMpbWKX3ae3MkDK6DY(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 462
    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kMEz7afJ-C1bRJjyoXDjTsM07I(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WiR6dnjHfrZI7l-O7HOjL4VsE4(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$1(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AR4UodbEIfNfKeUoECl8nXZTcSI(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 2

    const/4 v0, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    .line 313
    const-string v1, "REPLACE INTO business_replies VALUES(?, ?, ?, ?);"

    invoke-virtual {p0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 315
    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 316
    iget-object p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 317
    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 318
    iget p0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    const/4 p1, 0x4

    invoke-virtual {v0, p1, p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 319
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_0
    return-void

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 326
    :cond_1
    throw p0
.end method

.method public static synthetic $r8$lambda$CcMGPdJ4mXrWLU0JeEK4dbS-byk(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$21(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EwYGmZW7ZH0aK1Dg1PXrysYBOcI(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$22(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRkaQ1eL1ejginr8m4oJfF0URoY(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$19(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IZyd_9A10W9tQVaRzAR4af8QwKQ(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$24(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IlYkbDO4pT633PiIRVfxrzhaKzI(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)I
    .locals 0

    .line 410
    iget p0, p0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public static synthetic $r8$lambda$Lt4gBLlWHHkvc0tI-J-sWBR12Vs(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$25(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RNQMFALXqWz32fXde-megZYtbzY(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RydZKfuF2MZQ3yyLCHPNfKOIt0M()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$SeFBaSSvuRxXGI3BgqiugRrI1p8(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V
    .locals 3

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "DELETE FROM quick_replies_messages WHERE topic_id IN (%s)"

    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 490
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvTmZmGBayh0kQv6ZsvM4qPqfag(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$updateTopMessage$15(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeGYKWH1LXZ31D_ScI7cVyeoX0s()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$bH-K3ut4ePBfrswrOWBKAHIirt4(Lorg/telegram/messenger/MessagesStorage;I)V
    .locals 2

    .line 674
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p0

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM business_replies WHERE topic_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM quick_replies_messages WHERE topic_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 678
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7Kf5haYHXF_hpa14iutBrNzAYg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 423
    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda20;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lG8QvbC-rUDrs3KIwCcA2R1snp8(Lorg/telegram/ui/Business/QuickRepliesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$checkLocalMessages$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$osO0EMNuE6fwQAiJc0S1kf3DMO0(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$26(Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvmBvgNoBJ5V29MRQ4JKZlWDX4w(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$processUpdate$18(Lorg/telegram/tgnet/TLRPC$Update;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vG9lYXD2QyZGiyR7a3Wz093LGhE(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vQGX-INKrm_qz1O2pj3k66SOugo(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController;->lambda$sendQuickReplyTo$27(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z94vlEvUKe90dH8KC7co8cg7_OA()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$zKsHgny0_FQW9t7B5Ze74pfO3FU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 438
    new-instance p0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda17;

    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    .line 36
    new-array v1, v0, [Lorg/telegram/ui/Business/QuickRepliesController;

    sput-object v1, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    .line 37
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    sget-object v2, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    .line 58
    iput p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    return-void
.end method

.method private addReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 3

    .line 308
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 328
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private ensureLoaded(Ljava/lang/Runnable;)V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 270
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance(I)Lorg/telegram/ui/Business/QuickRepliesController;
    .locals 3

    .line 44
    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->lockObjects:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lorg/telegram/ui/Business/QuickRepliesController;->Instance:[Lorg/telegram/ui/Business/QuickRepliesController;

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/QuickRepliesController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static isSpecial(Ljava/lang/String;)Z
    .locals 1

    .line 33
    const-string v0, "hello"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "away"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$checkLocalMessages$23()V
    .locals 3

    .line 732
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    .line 189
    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 190
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p4, :cond_0

    .line 194
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->load(Z)V

    .line 198
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v6

    .line 132
    const-string v7, "SELECT topic_id, name, order_value, count FROM business_replies ORDER BY order_value ASC"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_0

    .line 134
    new-instance v9, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    .line 135
    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v9, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 136
    invoke-virtual {v7, v12}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 137
    invoke-virtual {v7, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v9, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    .line 138
    invoke-virtual {v7, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v10

    iput v10, v9, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 139
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    :goto_1
    move-object v5, v7

    goto/16 :goto_4

    .line 141
    :cond_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 143
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v8

    .line 146
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 147
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 148
    const-string v5, "SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC"

    iget v10, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v8

    invoke-virtual {v6, v5, v11}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v7, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {v5, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v10

    invoke-static {v5, v10, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 153
    invoke-virtual {v7, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    move-object/from16 v16, v9

    move-wide/from16 v8, p2

    .line 154
    invoke-virtual {v10, v5, v8, v9}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 155
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v5, 0x2

    .line 156
    invoke-virtual {v7, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v11, 0x3

    .line 157
    invoke-virtual {v7, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 158
    iget v5, v10, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v17, 0x40000000    # 2.0f

    or-int v5, v5, v17

    iput v5, v10, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 v5, 0x4

    .line 159
    invoke-virtual {v7, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v10, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    const/4 v5, 0x5

    .line 160
    invoke-virtual {v7, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v10, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    move-object/from16 v5, v16

    const/4 v11, 0x0

    .line 161
    invoke-static {v10, v5, v13, v11}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 163
    new-instance v11, Lorg/telegram/messenger/MessageObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v4

    :try_start_2
    iget v4, v1, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    const/4 v1, 0x0

    invoke-direct {v11, v4, v10, v1, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v11, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 164
    iget v4, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v4, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 165
    invoke-virtual {v11, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 166
    iget-object v4, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget v11, v15, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_1
    move-object/from16 v17, v4

    move v1, v8

    move-object v5, v9

    move-wide/from16 v8, p2

    .line 169
    :goto_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    add-int/lit8 v14, v14, 0x1

    move v8, v1

    move-object v9, v5

    move-object/from16 v4, v17

    const/4 v10, 0x3

    const/4 v11, 0x2

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_2
    move-object/from16 v17, v4

    move-object v5, v9

    .line 172
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 173
    const-string v1, ","

    invoke-static {v1, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 175
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 176
    invoke-virtual {v0, v5, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :cond_4
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    const/4 v5, 0x0

    .line 180
    :goto_4
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_5

    .line 183
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 187
    :cond_5
    :goto_5
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda13;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v5, :cond_6

    .line 183
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 185
    :cond_6
    throw v0
.end method

.method private synthetic lambda$load$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    .line 218
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 219
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;

    .line 220
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 221
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 222
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->users:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 225
    :goto_0
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->quick_replies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 226
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->quick_replies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    .line 227
    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    .line 228
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 229
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 230
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 231
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 232
    iput v4, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    move v7, v2

    .line 235
    :goto_1
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 236
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_quickReplies;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    .line 237
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-ne v9, v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_2
    if-eqz v8, :cond_2

    .line 244
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v9, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v9, v8, v2, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 245
    invoke-virtual {v7, v2}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 246
    iget-object v7, v6, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    invoke-virtual {v7, v8, v5}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    .line 249
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 254
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-eqz v3, :cond_5

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 259
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    .line 260
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 261
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$load$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 216
    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$17(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 562
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 563
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 565
    new-instance v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    .line 566
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 567
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 568
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v8, v1, v6, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 569
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    if-eqz v2, :cond_0

    .line 571
    iput-object v2, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 572
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    .line 574
    :cond_0
    iget-object v6, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    .line 575
    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 576
    iget-object v6, v0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-direct {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateOrder()V

    .line 578
    invoke-direct {v0, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->addReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    goto :goto_0

    .line 579
    :cond_1
    iget v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v7, v8, :cond_2

    .line 580
    iput v8, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 581
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    iget v8, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v7, v8, v1, v6, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 582
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 583
    invoke-direct {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 584
    iget v4, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 585
    :cond_2
    iget v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 586
    iget v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    add-int/2addr v7, v5

    iput v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 587
    invoke-direct {v0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 588
    iget v4, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 593
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getAutodownloadMask()I

    move-result v13

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    int-to-long v2, v2

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x5

    move-wide v15, v2

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    .line 596
    iget v2, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 598
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 599
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v6, v7, v1, v5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget v1, v0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    :cond_4
    return-void
.end method

.method private synthetic lambda$processUpdate$18(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 8

    .line 606
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;->quick_replies:Ljava/util/ArrayList;

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 609
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 610
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    move v4, v1

    .line 612
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 613
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v5, v5, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    if-ne v5, v7, :cond_0

    .line 614
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_2
    if-nez v4, :cond_2

    .line 619
    new-instance v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    .line 621
    :cond_2
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 622
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 623
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 624
    iput v2, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    .line 625
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 626
    iget-object v5, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-eq v5, v3, :cond_3

    .line 627
    iput-object v6, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 629
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v3, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 633
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$19(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 2

    .line 638
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;->quick_reply:Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    .line 639
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 642
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 643
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 644
    iget-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    .line 645
    iput-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 646
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    return-void

    .line 650
    :cond_0
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    .line 651
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut_id:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 652
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->shortcut:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 653
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->count:I

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    .line 654
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->top_message:I

    iput p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 655
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateOrder()V

    .line 656
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    .line 659
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 660
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$21(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 3

    .line 665
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;->shortcut_id:I

    int-to-long v0, p1

    .line 666
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    iget-object v0, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    .line 670
    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 671
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/MessagesStorage;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 681
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 682
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processUpdate$22(Lorg/telegram/tgnet/TLRPC$Update;)V
    .locals 3

    .line 688
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;

    .line 689
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->shortcut_id:I

    int-to-long v0, v0

    .line 690
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 692
    iget v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    if-gtz v1, :cond_0

    .line 694
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 696
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getTopMessageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 701
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 697
    iput-object p1, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 698
    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$saveToCache$4(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 4

    const/4 v0, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    .line 280
    const-string v1, "DELETE FROM business_replies"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 281
    const-string v1, "REPLACE INTO business_replies VALUES(?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    .line 282
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 284
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 285
    iget v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 286
    iget-object v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 287
    iget v2, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 288
    iget v1, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->messagesCount:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 289
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void

    .line 292
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 297
    :cond_2
    throw p1
.end method

.method private synthetic lambda$sendQuickReplyTo$24(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 798
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz v0, :cond_2

    .line 799
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    .line 800
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 801
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    .line 802
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    :cond_0
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->id:Ljava/util/ArrayList;

    .line 806
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 807
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->random_id:Ljava/util/ArrayList;

    sget-object p4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p4}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 811
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on getQuickReplyMessages when trying to send quick reply"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$25(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 797
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda27;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$26(Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 3

    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 815
    :cond_0
    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->id:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 816
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 817
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->random_id:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 819
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 795
    :cond_2
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;-><init>()V

    .line 796
    iget p2, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplyMessages;->shortcut_id:I

    .line 797
    iget p2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$sendQuickReplyTo$27(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V
    .locals 6

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 782
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "SELECT id FROM quick_replies_messages WHERE topic_id = ?"

    iget v3, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p1, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    .line 783
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 784
    invoke-virtual {v1, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 790
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_3

    .line 787
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    .line 793
    :cond_1
    :goto_3
    new-instance p1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0, v0, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 792
    :cond_2
    throw p1
.end method

.method private synthetic lambda$updateTopMessage$15(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 538
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 539
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 540
    iput-object p4, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_0

    .line 542
    iget-object p1, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    iget p2, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/MessageObject;->applyQuickReply(Ljava/lang/String;I)V

    .line 544
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 545
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updateTopMessage$16(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V
    .locals 10

    const/4 v1, 0x0

    .line 504
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT data, send_state, mid, date, topic_id, ttl FROM quick_replies_messages WHERE topic_id = ? ORDER BY mid ASC"

    iget v5, p2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v4, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    invoke-virtual {v3, v8}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 512
    invoke-virtual {v4, v8}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v4, v5, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v5

    .line 513
    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 514
    invoke-virtual {v5, v4, p3, p4}, Lorg/telegram/tgnet/TLRPC$Message;->readAttachPath(Lorg/telegram/tgnet/InputSerializedData;J)V

    .line 515
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 p3, 0x2

    .line 516
    invoke-virtual {v3, p3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p3

    iput p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 p3, 0x3

    .line 517
    invoke-virtual {v3, p3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p3

    iput p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 518
    iget p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 p4, 0x40000000    # 2.0f

    or-int/2addr p3, p4

    iput p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/4 p3, 0x4

    .line 519
    invoke-virtual {v3, p3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p3

    iput p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    const/4 p3, 0x5

    .line 520
    invoke-virtual {v3, p3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result p3

    iput p3, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 521
    invoke-static {v5, v0, v2, v1}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 523
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    iget p3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-direct {v1, p3, v5, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    :cond_0
    move-object v9, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_1

    .line 526
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 528
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 529
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 530
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 531
    const-string p3, ","

    invoke-static {p3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 533
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 534
    invoke-virtual {p1, v0, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 537
    :cond_2
    new-instance v4, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda16;

    move-object v5, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 548
    :goto_1
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_3
    return-void

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 553
    :cond_4
    throw p1
.end method

.method private load(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private load(ZLjava/lang/Runnable;)V
    .locals 9

    .line 119
    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loaded:Z

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->loading:Z

    if-eqz p1, :cond_2

    .line 122
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    .line 123
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    .line 124
    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;JLjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move-object v1, p0

    .line 202
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;-><init>()V

    const-wide/16 v2, 0x0

    .line 203
    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    const/4 p2, 0x0

    move v0, p2

    .line 204
    :goto_0
    iget-object v4, v1, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 205
    iget-object v4, v1, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 207
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    iget v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    .line 208
    iget-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    if-nez v7, :cond_3

    move-wide v7, v2

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, p2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticBackport0;->m(Ljava/lang/String;I)J

    move-result-wide v7

    :goto_1
    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    .line 209
    iget-object v7, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v7, :cond_4

    move-wide v7, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    int-to-long v7, v7

    :goto_2
    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    .line 210
    iget-object v4, v4, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_5

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 211
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    int-to-long v7, v4

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    goto :goto_3

    .line 213
    :cond_5
    invoke-static {v5, v6, v2, v3}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getQuickReplies;->hash:J

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_6
    iget p2, v1, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_4
    return-void
.end method

.method private saveToCache()V
    .locals 3

    .line 275
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateOrder()V
    .locals 2

    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iput v0, v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->order:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTopMessage(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 499
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    .line 500
    iget v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 501
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda10;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public canAddNew()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 86
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_5

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v4, "hello"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v5

    :goto_2
    if-nez v3, :cond_3

    .line 88
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget-object v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const-string v4, "away"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v3, v0

    goto :goto_4

    :cond_3
    :goto_3
    move v3, v5

    :goto_4
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_5
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    xor-int/2addr v2, v5

    add-int/2addr v1, v2

    xor-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v2

    .line 92
    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->quickRepliesLimit:I

    if-ge v1, v2, :cond_6

    return v5

    :cond_6
    return v0
.end method

.method public checkLocalMessages(Ljava/util/ArrayList;)V
    .locals 5

    .line 711
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 712
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getQuickReplyId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 715
    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 719
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Business/QuickRepliesController;->findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v3

    if-nez v3, :cond_4

    .line 721
    new-instance v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    const/4 v4, 0x1

    .line 722
    iput-boolean v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->local:Z

    .line 723
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getQuickReplyName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    const/4 v4, -0x1

    .line 724
    iput v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    .line 725
    iput-object v2, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessage:Lorg/telegram/messenger/MessageObject;

    .line 726
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->topMessageId:I

    .line 727
    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_4
    iget-object v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public deleteLocalMessage(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 752
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 753
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 754
    iget-object v3, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 755
    iget-object v1, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->localIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {v2}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->getMessagesCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 759
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public deleteLocalMessages(Ljava/util/ArrayList;)V
    .locals 3

    .line 746
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 747
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalMessage(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteLocalReply(Ljava/lang/String;)V
    .locals 2

    .line 738
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 741
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public deleteReplies(Ljava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 447
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 448
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v2

    if-nez v2, :cond_0

    .line 449
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    move v1, v0

    .line 455
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 456
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v2

    .line 457
    iget-object v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 458
    iget-object v4, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Business/QuickRepliesController;->deleteLocalReply(Ljava/lang/String;)V

    .line 460
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;-><init>()V

    .line 461
    iget v5, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteQuickReplyShortcut;->shortcut_id:I

    .line 462
    iget v5, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda21;

    invoke-direct {v6}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v5, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 466
    const-string v4, "hello"

    iget-object v5, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 467
    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessGreetingMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessGreetingMessage;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 468
    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 470
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 471
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_greeting_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessGreetingMessage;

    .line 472
    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_2

    .line 474
    :cond_3
    const-string v4, "away"

    iget-object v2, v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 475
    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/tgnet/tl/TL_account$updateBusinessAwayMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_account$updateBusinessAwayMessage;-><init>()V

    invoke-virtual {v2, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 476
    iget v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 478
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 479
    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->business_away_message:Lorg/telegram/tgnet/tl/TL_account$TL_businessAwayMessage;

    .line 480
    iget v4, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 484
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 485
    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda22;

    invoke-direct {v3, v1, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 494
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public findLocalReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 5

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->localReplies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 360
    iget-object v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 6

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 333
    iget v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;
    .locals 5

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    .line 342
    iget-object v4, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFilteredReplies()Ljava/util/ArrayList;
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v1}, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->isSpecial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->filtered:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasReplies()Z
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isNameBusy(Ljava/lang/String;I)Z
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(Ljava/lang/String;)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    iget p1, p1, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public load()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->load(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$Update;Ljava/lang/String;I)Z
    .locals 2

    .line 559
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplyMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 561
    new-instance v0, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    .line 604
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateQuickReplies;

    if-eqz p2, :cond_1

    .line 605
    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    .line 636
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;

    if-eqz p2, :cond_2

    .line 637
    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    .line 663
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReply;

    if-eqz p2, :cond_3

    .line 664
    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    .line 686
    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteQuickReplyMessages;

    if-eqz p2, :cond_4

    .line 687
    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Business/QuickRepliesController;->ensureLoaded(Ljava/lang/Runnable;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public renameReply(ILjava/lang/String;)V
    .locals 2

    int-to-long v0, p1

    .line 431
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Business/QuickRepliesController;->findReply(J)Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iput-object p2, v0, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->name:Ljava/lang/String;

    .line 435
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;-><init>()V

    .line 436
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;->shortcut_id:I

    .line 437
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editQuickReplyShortcut;->shortcut:Ljava/lang/String;

    .line 438
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 441
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    .line 443
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->quickRepliesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public reorder()V
    .locals 5

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 407
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 408
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v1

    .line 412
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 413
    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 419
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;-><init>()V

    .line 420
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_reorderQuickReplies;->order:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Business/QuickRepliesController;->replies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;

    iget v3, v3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 423
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 426
    invoke-direct {p0}, Lorg/telegram/ui/Business/QuickRepliesController;->saveToCache()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public sendQuickReplyTo(JLorg/telegram/ui/Business/QuickRepliesController$QuickReply;)V
    .locals 2

    if-nez p3, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;-><init>()V

    .line 773
    iget v1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 775
    :cond_1
    iget p1, p3, Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;->id:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;->shortcut_id:I

    .line 777
    iget p1, p0, Lorg/telegram/ui/Business/QuickRepliesController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    .line 778
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, p3, v0}, Lorg/telegram/ui/Business/QuickRepliesController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Business/QuickRepliesController;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;Lorg/telegram/tgnet/TLRPC$TL_messages_sendQuickReplyMessages;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
