.class Lorg/telegram/ui/Components/RLottieDrawable$2;
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

    .line 168
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fputsingleFrameDecoded(Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->decodeFrameFinishedInternal()V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetonFrameReadyRunnable(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable$2;->this$0:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->-$$Nest$fgetonFrameReadyRunnable(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
