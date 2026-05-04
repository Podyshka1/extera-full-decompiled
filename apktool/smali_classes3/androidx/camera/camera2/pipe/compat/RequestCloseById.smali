.class public final Landroidx/camera/camera2/pipe/compat/RequestCloseById;
.super Landroidx/camera/camera2/pipe/compat/CameraRequest;
.source "SourceFile"


# instance fields
.field private final activeCameraId:Ljava/lang/String;

.field private final deferred:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "activeCameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraRequest;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 58
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/RequestCloseById;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getActiveCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeferred()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCloseById("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/RequestCloseById;->activeCameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
