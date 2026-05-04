.class Lorg/telegram/ui/Components/RLottieDrawable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RLottieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method public static synthetic $r8$lambda$E3xLbZPxStZYMuZo2fpD0KDw8I0(Lorg/telegram/ui/Components/RLottieDrawable$3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->createCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :catchall_0
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetuiRunnableCacheFinished(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 186
    iput-boolean v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 187
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 190
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->incrementTaskCounter()V

    .line 191
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable$3;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RLottieDrawable$3;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
