.class public final Landroidx/camera/camera2/pipe/internal/FrameDistributor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;,
        Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;


# instance fields
.field private final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field private final frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

.field private frameStartedListener:Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;

.field private final imageDistributors:Ljava/util/Map;

.field private final imageStreams:Ljava/util/Set;

.field private final streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;


# direct methods
.method public static synthetic $r8$lambda$rWkGfvD7xGINf9EVDvFJlvgalyk(Landroidx/camera/camera2/pipe/FrameReference;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameStartedListener$lambda$0(Landroidx/camera/camera2/pipe/FrameReference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->Companion:Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;ZJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "streamGraphImpl"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "frameCaptureQueue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 66
    iput-object v2, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 82
    new-instance v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 83
    sget-object v6, Landroidx/camera/camera2/pipe/media/NoOpFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/NoOpFinalizer;

    .line 84
    sget-object v2, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->Companion:Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher$Companion;->getEXACT()Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 82
    invoke-direct/range {v4 .. v9}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;-><init>(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 101
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 411
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1252
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Required value was null."

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1253
    check-cast v3, Ljava/util/Map$Entry;

    .line 411
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1253
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/media/ImageSource;

    .line 102
    iget-object v6, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v6, v8}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 103
    iget-object v4, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v4, v8}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getCameraStreamConfig-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getImageSourceConfig()Landroidx/camera/camera2/pipe/ImageSourceConfig;

    const/4 v10, 0x0

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    sget-object v7, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->Companion:Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;

    move/from16 v11, p3

    move-wide/from16 v12, p4

    invoke-static/range {v7 .. v13}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;->access$selectTimestampMatcher-5y4XNsE(Landroidx/camera/camera2/pipe/internal/FrameDistributor$Companion;ILandroidx/camera/camera2/pipe/CameraStream$Config;Landroidx/camera/camera2/pipe/ImageSourceConfig;ZJ)Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    move-result-object v14

    .line 114
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v4

    .line 115
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/OutputStream;

    .line 117
    new-instance v11, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 118
    sget-object v13, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/ClosingFinalizer;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v12, 0x0

    .line 117
    invoke-direct/range {v11 .. v16}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;-><init>(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    invoke-interface {v8}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v8

    invoke-static {v8}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v8

    invoke-interface {v4, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {v4}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 125
    new-instance v7, Landroidx/camera/camera2/pipe/internal/FrameDistributor$imageDistributors$1$1;

    invoke-direct {v7, v4, v3}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$imageDistributors$1$1;-><init>(Ljava/util/Map;Landroidx/camera/camera2/pipe/media/ImageSource;)V

    invoke-interface {v3, v7}, Landroidx/camera/camera2/pipe/media/ImageSource;->setImageListener(Landroidx/camera/camera2/pipe/media/ImageListener;)V

    .line 144
    new-instance v7, Landroidx/camera/camera2/pipe/internal/FrameDistributor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6, v4}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/CameraStream;Ljava/util/Map;)V

    invoke-interface {v3, v7}, Landroidx/camera/camera2/pipe/media/ImageSource;->setExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;)V

    .line 1253
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_2
    iput-object v2, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageDistributors:Ljava/util/Map;

    .line 162
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v3

    .line 162
    iget-object v5, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v5, v3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1635
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageStreams:Ljava/util/Set;

    .line 164
    new-instance v1, Landroidx/camera/camera2/pipe/internal/FrameDistributor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameStartedListener:Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;

    return-void
.end method

.method private static final frameStartedListener$lambda$0(Landroidx/camera/camera2/pipe/FrameReference;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 311
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->close()V

    .line 314
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->close()V

    .line 317
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageDistributors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 318
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 319
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->remove(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 1

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageDistributors:Ljava/util/Map;

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v0, p4}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getCameraStreamConfig-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 249
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getImageSourceConfig()Landroidx/camera/camera2/pipe/ImageSourceConfig;

    .line 259
    invoke-static {p5}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 262
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 263
    invoke-virtual {p4, p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputFailure-Vw7M1qk(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 259
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onCaptureProgress(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 1

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 64
    invoke-static {p4}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 236
    invoke-virtual {p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputResult-DvZWqE8(JLjava/lang/Object;)V

    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 2

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 276
    sget-object v1, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    sget-object v1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_FAILED-U7r42EA()I

    move-result v1

    .line 68
    invoke-static {v1}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 274
    invoke-virtual {v0, p2, p3, v1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputResult-DvZWqE8(JLjava/lang/Object;)V

    .line 285
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestFailure;->getWasImageCaptured()Z

    move-result p4

    if-nez p4, :cond_2

    .line 289
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result p4

    .line 290
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageDistributors:Ljava/util/Map;

    invoke-static {p4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    if-nez p4, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 292
    invoke-virtual {v0, p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputFailure-Vw7M1qk(J)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public synthetic onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public synthetic onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCreated(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 11

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v1, Landroidx/camera/camera2/pipe/internal/FrameState;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageStreams:Ljava/util/Set;

    const/4 v8, 0x0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/camera/camera2/pipe/internal/FrameState;-><init>(Landroidx/camera/camera2/pipe/RequestMetadata;JJLjava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v1

    .line 181
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameInfoDistributor:Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    .line 185
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameInfoOutput()Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    move-result-object v7

    move-wide v5, p2

    move-wide v1, p2

    move-wide v3, p4

    .line 181
    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputStarted-qGubWw0(JJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V

    .line 189
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_3

    .line 190
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/internal/FrameState;->getImageOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 191
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->imageDistributors:Ljava/util/Map;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/Map;

    .line 192
    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getOutputId-4LaLFng()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;

    move-wide v5, p4

    move-wide v1, p2

    move-wide v3, p4

    .line 195
    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputStarted-qGubWw0(JJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V

    .line 202
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getStreams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->getStreamId-ptHMqGs()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/internal/FrameState;->getFrameNumber-Ugla2oM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->onOutputFailure-Vw7M1qk(J)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 192
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_3
    new-instance p2, Landroidx/camera/camera2/pipe/internal/FrameImpl;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p2, v8, v0, p3, v0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;-><init>(Landroidx/camera/camera2/pipe/internal/FrameState;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    iget-object p3, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameStartedListener:Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;

    invoke-interface {p3, p2}, Landroidx/camera/camera2/pipe/internal/FrameDistributor$FrameStartedListener;->onFrameStarted(Landroidx/camera/camera2/pipe/FrameReference;)V

    .line 217
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRepeating()Z

    move-result p3

    if-nez p3, :cond_4

    .line 218
    iget-object p3, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;->remove(Landroidx/camera/camera2/pipe/Request;)Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue$FrameCaptureImpl;

    .line 226
    :cond_4
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->close()V

    return-void
.end method

.method public synthetic onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method
