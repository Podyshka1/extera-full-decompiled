.class public final Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestSignal"
.end annotation


# instance fields
.field private final requestNo:I

.field private final signal:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/CompletableDeferred;)V
    .locals 1

    const-string/jumbo v0, "signal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    iget v3, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequestNo()I
    .locals 1

    .line 67
    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    return v0
.end method

.method public final getSignal()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestSignal(requestNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferred;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
