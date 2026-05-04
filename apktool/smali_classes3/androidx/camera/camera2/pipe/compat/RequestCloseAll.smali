.class public final Landroidx/camera/camera2/pipe/compat/RequestCloseAll;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final deferred:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final getDeferred()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "RequestCloseAll"

    return-object v0
.end method
