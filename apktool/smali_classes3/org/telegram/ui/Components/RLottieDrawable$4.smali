.class Lorg/telegram/ui/Components/RLottieDrawable$4;
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
.method constructor <init>(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 214
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->decodeFrameFinishedInternal()V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable;->whenCacheDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 216
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$4;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v1, v0, Lorg/telegram/ui/Components/RLottieDrawable;->whenCacheDone:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
