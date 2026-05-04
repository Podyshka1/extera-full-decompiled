.class public Lorg/telegram/messenger/UnconfirmedAuthController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;
    }
.end annotation


# instance fields
.field public final auths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;"
        }
    .end annotation
.end field

.field private final checkExpiration:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private debug:Z

.field private fetchedCache:Z

.field private fetchingCache:Z

.field private saveAfterFetch:Z

.field private savingCache:Z


# direct methods
.method public static synthetic $r8$lambda$582Tc8BGoGx1xygr1PqF_7lMaYU(Lorg/telegram/messenger/UnconfirmedAuthController;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$readCache$0(Ljava/util/HashSet;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6w7xO7feFnZ-AsLLQ4OUAJmTNlQ(Lorg/telegram/messenger/UnconfirmedAuthController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$saveCache$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8TLDwlQ3PmMHxXAE2jVlnaOgqWs(Lorg/telegram/messenger/UnconfirmedAuthController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$saveCache$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ed6GVKZPCOyjWEyKEeJ9vaeFzAc(Lorg/telegram/messenger/UnconfirmedAuthController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$EunyHx3T8GwhdkgsX9sjvPHUP40(Lorg/telegram/messenger/UnconfirmedAuthController;[ZLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$updateList$7([ZLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJhReUHqCliAHaxOC-3AKA_h2IU([ZILjava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 208
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    aput-boolean p3, p0, p1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xkl6YfEqtx2D_7-2sCSneOIOAm4(Lorg/telegram/messenger/UnconfirmedAuthController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->lambda$readCache$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$s03l1nRxg-y6Lr_3nNXQXlCZPK0([ZIZLorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;Ljava/lang/Runnable;)V
    .locals 1

    .line 208
    new-instance v0, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p4}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda2;-><init>([ZILjava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->confirm(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 212
    :cond_0
    invoke-virtual {p3, v0}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->deny(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/UnconfirmedAuthController;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdebug(Lorg/telegram/messenger/UnconfirmedAuthController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->debug:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdebug(Lorg/telegram/messenger/UnconfirmedAuthController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->debug:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;)V

    iput-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->checkExpiration:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->debug:Z

    .line 24
    iput p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    .line 25
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->readCache()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    .line 114
    invoke-virtual {v1}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->expired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    return-void
.end method

.method private synthetic lambda$readCache$0(Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 7

    .line 68
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 69
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 70
    iget-object v3, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->expired()Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, v3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    .line 79
    iput-boolean v4, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchedCache:Z

    .line 80
    iput-boolean v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchingCache:Z

    if-eq v0, p1, :cond_3

    .line 83
    iget p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 85
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->scheduleAuthExpireCheck()V

    .line 87
    iget-boolean p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->saveAfterFetch:Z

    if-eqz p1, :cond_4

    .line 88
    iput-boolean v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->saveAfterFetch:Z

    .line 89
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$readCache$1()V
    .locals 8

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget v2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 44
    :try_start_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT data FROM unconfirmed_auth"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v3, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 49
    :try_start_1
    new-instance v4, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    invoke-direct {v4, p0, v2}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-wide v4, v4, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v4

    .line 53
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 55
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_3

    .line 62
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_4

    .line 59
    :goto_3
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_2

    .line 67
    :cond_2
    :goto_4
    new-instance v2, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 65
    :cond_3
    throw v0
.end method

.method private synthetic lambda$saveCache$3()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->savingCache:Z

    return-void
.end method

.method private synthetic lambda$saveCache$4()V
    .locals 9

    .line 160
    iget v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    :try_start_0
    const-string v2, "DELETE FROM unconfirmed_auth WHERE 1"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 164
    const-string v2, "REPLACE INTO unconfirmed_auth VALUES(?)"

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 165
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    .line 166
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v5}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 170
    :try_start_3
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    const/4 v5, 0x1

    .line 171
    invoke-virtual {v0, v5, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    .line 172
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    :try_start_4
    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 177
    :cond_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 183
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 180
    :goto_3
    :try_start_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 187
    :cond_2
    :goto_4
    new-instance v0, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 186
    :cond_3
    throw v1
.end method

.method private synthetic lambda$updateList$7([ZLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 220
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 221
    aget-boolean v4, p1, v3

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    .line 223
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-wide v4, v4, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_4

    move p1, v2

    .line 228
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 229
    iget-object p2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    iget-wide p2, p2, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 230
    iget-object p2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 235
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    .line 236
    iget p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 237
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->scheduleAuthExpireCheck()V

    .line 240
    :cond_4
    invoke-interface {p4, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private scheduleAuthExpireCheck()V
    .locals 9

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->checkExpiration:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    .line 103
    invoke-virtual {v7}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->expiresAfter()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    :goto_1
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->checkExpiration:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v5, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateList(ZLjava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;>;)V"
        }
    .end annotation

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v2, p2, [Z

    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v6, 0x0

    move v0, v6

    .line 204
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    .line 207
    new-instance v4, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v0, p1, v1}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda0;-><init>([ZIZLorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;)V

    aput-object v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;[ZLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {v0, p2}, Lorg/telegram/messenger/Utilities;->raceCallbacks(Ljava/lang/Runnable;[Lorg/telegram/messenger/Utilities$Callback;)V

    if-eqz v4, :cond_4

    .line 245
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    move p2, v6

    .line 246
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 247
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    iget-wide v4, p3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v6

    .line 249
    :goto_2
    iget-object p3, v1, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 250
    iget-object p3, v1, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    iget-wide v2, p3, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 251
    iget-object p3, v1, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 256
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    .line 257
    iget p1, v1, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I

    new-array p3, v6, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->scheduleAuthExpireCheck()V

    :cond_4
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    .line 196
    iget v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->scheduleAuthExpireCheck()V

    return-void
.end method

.method public confirm(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 264
    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/UnconfirmedAuthController;->updateList(ZLjava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public deny(Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/UnconfirmedAuthController;->updateList(ZLjava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 134
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 135
    iget-object v2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    if-eqz v2, :cond_0

    .line 136
    iget-wide v2, v2, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;->hash:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->hash:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->unconfirmed:Z

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->auths:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/UnconfirmedAuthController$UnconfirmedAuth;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    iget p1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->unconfirmedAuthUpdate:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->scheduleAuthExpireCheck()V

    .line 146
    invoke-virtual {p0}, Lorg/telegram/messenger/UnconfirmedAuthController;->saveCache()V

    return-void
.end method

.method public putDebug()V
    .locals 4

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->debug:Z

    .line 125
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;-><init>()V

    .line 126
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->unconfirmed:Z

    .line 127
    const-string v0, "device"

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->device:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "location"

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->location:Ljava/lang/String;

    const-wide/16 v2, 0x7b

    .line 129
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->hash:J

    .line 130
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/UnconfirmedAuthController;->processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;)V

    return-void
.end method

.method public readCache()V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchedCache:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchingCache:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchingCache:Z

    .line 38
    iget v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public saveCache()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->savingCache:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->fetchingCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 155
    iput-boolean v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->saveAfterFetch:Z

    return-void

    .line 158
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->savingCache:Z

    .line 159
    iget v0, p0, Lorg/telegram/messenger/UnconfirmedAuthController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/UnconfirmedAuthController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/UnconfirmedAuthController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
