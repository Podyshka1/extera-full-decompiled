.class Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 34
    iput-object p1, p0, Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 6

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/ContactsSyncAdapterService;->-$$Nest$smperformSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 42
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
