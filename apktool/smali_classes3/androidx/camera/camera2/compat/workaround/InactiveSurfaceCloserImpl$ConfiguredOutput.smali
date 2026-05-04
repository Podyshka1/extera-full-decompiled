.class public final Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfiguredOutput"
.end annotation


# instance fields
.field private final deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final graph:Landroidx/camera/camera2/pipe/CameraGraph;

.field private final streamId:I


# direct methods
.method private constructor <init>(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 1

    const-string v0, "deferrableSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graph"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    .line 94
    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 95
    iput-object p3, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;-><init>(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    iget v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->setSurface-NYG5g8E(ILandroid/view/Surface;)V

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    return-void
.end method

.method public final contains(Landroidx/camera/core/impl/DeferrableSurface;)Z
    .locals 1

    const-string v0, "deferrableSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;

    iget v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    iget v3, p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    iget-object v3, p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    iget-object p1, p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/StreamId;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfiguredOutput(streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->streamId:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deferrableSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->deferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl$ConfiguredOutput;->graph:Landroidx/camera/camera2/pipe/CameraGraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
