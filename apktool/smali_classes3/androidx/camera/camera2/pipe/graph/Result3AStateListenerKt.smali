.class public abstract Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$6eKrfLPahyf8ytTlPs2wBLGcMEY(Ljava/util/Map;Landroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/pipe/FrameMetadata;)Z

    move-result p0

    return p0
.end method

.method public static final toConditionChecker(Ljava/util/Map;)Lkotlin/jvm/functions/Function1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static final toConditionChecker$lambda$0(Ljava/util/Map;Landroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 2

    const-string v0, "frameMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
