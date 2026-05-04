.class final Landroidx/work/OperationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Operation;


# instance fields
.field private final future:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final state:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "future"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/work/OperationImpl;->state:Landroidx/lifecycle/LiveData;

    .line 65
    iput-object p2, p0, Landroidx/work/OperationImpl;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
