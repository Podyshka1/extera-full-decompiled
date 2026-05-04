.class public final synthetic Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DispatchQueuePool;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueuePool;

    iput-object p2, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/DispatchQueuePool;

    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;->$r8$lambda$uQsFuWRSzodu1IpnzlXt-rRx37M(Lorg/telegram/messenger/DispatchQueuePool;Ljava/lang/Runnable;)V

    return-void
.end method
