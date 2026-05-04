.class Lorg/telegram/ui/Components/AnimatedFileDrawable$1;
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
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputloadFrameTask(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mchekDestroyDecoder(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fgetpendingSeekTo(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputpendingSeekToUI(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$fputinvalidateAfter(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->-$$Nest$mscheduleNextGetFrame(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method
