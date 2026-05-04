.class public final synthetic Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/DispatchQueuePool;

.field public final synthetic f$1:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/DispatchQueuePool;

    iput-object p2, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/messenger/DispatchQueuePool;

    iget-object v1, p0, Lorg/telegram/messenger/DispatchQueuePool$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;->$r8$lambda$F8PDDlINqNCPm6_LDfZI3stHgeU(Lorg/telegram/messenger/DispatchQueuePool;Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method
