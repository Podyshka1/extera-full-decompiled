.class Lorg/telegram/ui/Components/AnimatedFileDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method public static synthetic $r8$lambda$VPlQ0Hsuf9XkemVhE5jpQOPgZrQ(Lorg/telegram/ui/Components/AnimatedFileDrawable$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->lambda$run$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ukqih8uBawpUgd6dQGgEdp7K2vw(Lorg/telegram/ui/Components/AnimatedFileDrawable$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->lambda$run$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    .line 214
    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mchekDestroyDecoder(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mscheduleNextGetFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    return-void
.end method

.method private synthetic lambda$run$1()V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->createCache()V

    .line 208
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable$2;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetisRecycled(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetdestroyWhenDone(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputstartTime(Lorg/telegram/ui/Components/AnimatedFileDrawable;F)V

    .line 200
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    const/4 v1, 0x0

    .line 204
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputloadFrameTask(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->incrementTaskCounter()V

    .line 206
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedFileDrawable$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable$2;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
