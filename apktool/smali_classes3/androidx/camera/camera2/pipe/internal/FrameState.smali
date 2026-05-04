.class public final Landroidx/camera/camera2/pipe/internal/FrameState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/FrameState$Companion;,
        Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;,
        Landroidx/camera/camera2/pipe/internal/FrameState$State;,
        Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

.field private static final frameIds:Lkotlinx/atomicfu/AtomicLong;


# instance fields
.field private final frameId:J

.field private final frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

.field private final frameNumber:J

.field private final frameTimestamp:J

.field private final imageOutputs:Ljava/util/List;

.field private final listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final remainingStreamCount:Lkotlinx/atomicfu/AtomicInt;

.field private final requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

.field private final state:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    const-wide/16 v0, 0x0

    .line 283
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameIds:Lkotlinx/atomicfu/AtomicLong;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;)V
    .locals 6

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageStreams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->requestMetadata:Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 52
    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    .line 53
    iput-wide p4, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    .line 56
    sget-object p2, Landroidx/camera/camera2/pipe/internal/FrameState;->Companion:Landroidx/camera/camera2/pipe/internal/FrameState$Companion;

    invoke-static {p2}, Landroidx/camera/camera2/pipe/internal/FrameState$Companion;->access$nextFrameId-OMxQvVY(Landroidx/camera/camera2/pipe/internal/FrameState$Companion;)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameId:J

    .line 57
    new-instance p2, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;)V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p2

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v2

    .line 61
    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result p5

    invoke-static {p5, v2}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    check-cast p4, Landroidx/camera/camera2/pipe/CameraStream;

    if-eqz p4, :cond_2

    .line 63
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p3

    .line 64
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v4

    .line 65
    move-object p4, p3

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p4, :cond_2

    .line 66
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v3

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    move-object v1, p0

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 58
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Ljava/util/List;

    .line 87
    sget-object p2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->STARTED:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p2

    iput-object p2, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lkotlinx/atomicfu/AtomicRef;

    .line 88
    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1635
    check-cast p3, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 88
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p3

    .line 1635
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 88
    :cond_4
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->remainingStreamCount:Lkotlinx/atomicfu/AtomicInt;

    .line 91
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, v1, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/camera/camera2/pipe/internal/FrameState;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$getFrameIds$cp()Lkotlinx/atomicfu/AtomicLong;
    .locals 1

    .line 50
    sget-object v0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameIds:Lkotlinx/atomicfu/AtomicLong;

    return-object v0
.end method

.method public static final synthetic access$getListenerStates$p(Landroidx/camera/camera2/pipe/internal/FrameState;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final invokeOnFrameComplete()V
    .locals 2

    .line 159
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 160
    throw v0
.end method


# virtual methods
.method public final getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    return-object v0
.end method

.method public final getFrameNumber-Ugla2oM()J
    .locals 2

    .line 52
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    return-wide v0
.end method

.method public final getImageOutputs()Ljava/util/List;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Ljava/util/List;

    return-object v0
.end method

.method public final onFrameInfoComplete()V
    .locals 5

    .line 113
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lkotlinx/atomicfu/AtomicRef;

    .line 187
    :cond_0
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 188
    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 114
    sget-object v3, Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 116
    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected frame state for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "! State is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->FRAME_INFO_COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 189
    :goto_0
    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    sget-object v0, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    if-ne v2, v0, :cond_3

    .line 129
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->invokeOnFrameComplete()V

    :cond_3
    return-void

    .line 124
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 125
    throw v0
.end method

.method public final onStreamResultComplete-aKI5c8E(I)V
    .locals 4

    .line 134
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->remainingStreamCount:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lkotlinx/atomicfu/AtomicRef;

    .line 187
    :cond_1
    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 188
    move-object v1, v0

    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 139
    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 141
    sget-object v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    goto :goto_0

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected frame state for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "! State is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_3
    sget-object v1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->STREAM_RESULTS_COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 189
    :goto_0
    invoke-virtual {p1, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 153
    sget-object p1, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    if-ne v1, p1, :cond_4

    .line 154
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->invokeOnFrameComplete()V

    :cond_4
    return-void

    .line 149
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 150
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameId:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/FrameId;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
