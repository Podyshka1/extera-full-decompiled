.class final Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StopMediaObserverRunnable"
.end annotation


# instance fields
.field public currentObserverToken:I

.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1276
    iput p1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1280
    iget v0, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetstartObserverToken(Lorg/telegram/messenger/MediaController;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1282
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetinternalObserver(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1283
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetinternalObserver(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1284
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputinternalObserver(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1287
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1290
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetexternalObserver(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1291
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetexternalObserver(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1292
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputexternalObserver(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1295
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
