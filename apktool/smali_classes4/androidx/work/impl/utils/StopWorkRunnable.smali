.class public final Landroidx/work/impl/utils/StopWorkRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final processor:Landroidx/work/impl/Processor;

.field private final reason:I

.field private final stopInForeground:Z

.field private final token:Landroidx/work/impl/StartStopToken;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/Processor;

    .line 29
    iput-object p2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/StartStopToken;

    .line 30
    iput-boolean p3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    .line 31
    iput p4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 44
    iget-boolean v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->stopInForeground:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/StartStopToken;

    iget v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->stopForegroundWork(Landroidx/work/impl/StartStopToken;I)Z

    move-result v0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/StopWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/StartStopToken;

    iget v2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->reason:I

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->stopWork(Landroidx/work/impl/StartStopToken;I)Z

    move-result v0

    .line 51
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 53
    const-string v2, "StopWorkRunnable"

    invoke-static {v2}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopWorkRunnable for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->token:Landroidx/work/impl/StartStopToken;

    invoke-virtual {v4}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Processor.stopWork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
