.class public final Landroidx/camera/camera2/impl/ComboRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# instance fields
.field private volatile listeners:Ljava/util/Map;

.field private final requestListeners:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$2ZXqZi6dlwnI6p0axLgb2KRFK0E(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/impl/ComboRequestListener;->onRequestSequenceCompleted_RuT0dZU$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3_sSK1DNXo8fKI0osgusaiU9ZJ4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/impl/ComboRequestListener;->onBufferLost_iiEMlm4$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public static synthetic $r8$lambda$7rkPM_7WH32ODeSIUTwHJqT1D9M(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/ComboRequestListener;->onComplete_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E9ODtXCbLpuROptrEFqoLHFOkio(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->onAborted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LcxW0_mUoZxH3eC5ZQCHd3kx2cY(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/impl/ComboRequestListener;->onStarted_uGKBvU4$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$STw5poy3cPuFFjOHqAbWO_1YVsM(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->onRequestSequenceSubmitted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8l73qwPNm62uCazDUDFIhkg3JI(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/ComboRequestListener;->onPartialCaptureResult_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XGgYw_mFOPwpHwoPmAE7AdNg2EE(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->onRequestSequenceAborted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_RPrTYani4Vl2_e-cNMrH07MWUI(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/ComboRequestListener;->onFailed_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bomjp4AIYjzkgdmuj8CC2VQTf7g(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/impl/ComboRequestListener;->onTotalCaptureResult_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMagU45qO6aq0UTPbzx28ernX08(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/ComboRequestListener;->onRequestSequenceCreated$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    .line 44
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    return-void
.end method

.method private static final onAborted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 65
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method private static final onBufferLost_iiEMlm4$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 77
    invoke-interface/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method private static final onComplete_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 88
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method private static final onFailed_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 98
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method private static final onPartialCaptureResult_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 109
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method private static final onRequestSequenceAborted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 116
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method private static final onRequestSequenceCompleted_RuT0dZU$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 125
    invoke-interface {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method private static final onRequestSequenceCreated$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 131
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method private static final onRequestSequenceSubmitted$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 137
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method private static final onStarted_uGKBvU4$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 147
    invoke-interface/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method private static final onTotalCaptureResult_CcXjc1I$lambda$0$0(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 158
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/camera/camera2/pipe/Request$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was already registered!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 65
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p1}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 10

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 76
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move v9, p5

    invoke-direct/range {v3 .. v9}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onCaptureProgress(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 9

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 88
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda10;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 9

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 98
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda4;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 9

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 108
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda6;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 116
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p1}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 4

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 125
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda7;

    invoke-direct {v3, v2, p1, p2, p3}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 131
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, p1}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 137
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2, p1}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 10

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 147
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 9

    const-string v0, "requestMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "totalCaptureResult"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 157
    new-instance v3, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroidx/camera/camera2/impl/ComboRequestListener$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Landroidx/camera/camera2/pipe/Request$Listener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->requestListeners:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/ComboRequestListener;->listeners:Ljava/util/Map;

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
