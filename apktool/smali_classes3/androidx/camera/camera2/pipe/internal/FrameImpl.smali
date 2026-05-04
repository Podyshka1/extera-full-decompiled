.class public final Landroidx/camera/camera2/pipe/internal/FrameImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/FrameReference;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

.field private final imageStreams:Ljava/util/Set;

.field private final outputStreams:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;)V
    .locals 1

    const-string v0, "frameState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageStreams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 41
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    .line 44
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1635
    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 44
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v0

    .line 1635
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->outputStreams:Ljava/util/Set;

    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 41
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1563
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 1635
    check-cast p4, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 41
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result p4

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p4

    .line 1635
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/FrameImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;)V

    return-void
.end method

.method private final release()Z
    .locals 6

    .line 93
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    .line 99
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 100
    iget-object v3, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 101
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->getImageStreams()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->decrement()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 89
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    return-void
.end method

.method protected final finalize()V
    .locals 2

    .line 131
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "! This indicates a memory leak and could cause the camera to stall, or images to be lost."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getImageStreams()Ljava/util/Set;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
