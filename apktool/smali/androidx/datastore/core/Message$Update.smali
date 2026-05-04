.class public final Landroidx/datastore/core/Message$Update;
.super Landroidx/datastore/core/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation


# instance fields
.field private final ack:Lkotlinx/coroutines/CompletableDeferred;

.field private final callerContext:Lkotlin/coroutines/CoroutineContext;

.field private final lastState:Landroidx/datastore/core/State;

.field private final transform:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferred;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Landroidx/datastore/core/Message;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    iput-object p1, p0, Landroidx/datastore/core/Message$Update;->transform:Lkotlin/jvm/functions/Function2;

    .line 40
    iput-object p2, p0, Landroidx/datastore/core/Message$Update;->ack:Lkotlinx/coroutines/CompletableDeferred;

    .line 41
    iput-object p3, p0, Landroidx/datastore/core/Message$Update;->lastState:Landroidx/datastore/core/State;

    .line 42
    iput-object p4, p0, Landroidx/datastore/core/Message$Update;->callerContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public final getAck()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/datastore/core/Message$Update;->ack:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getCallerContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/datastore/core/Message$Update;->callerContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getLastState()Landroidx/datastore/core/State;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/datastore/core/Message$Update;->lastState:Landroidx/datastore/core/State;

    return-object v0
.end method

.method public final getTransform()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/datastore/core/Message$Update;->transform:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
