.class public final Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcurrentConfig"
.end annotation


# instance fields
.field private final graphConfigs:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5

    const-string v0, "graphConfigs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->graphConfigs:Ljava/util/List;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    .line 112
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 113
    check-cast p1, Ljava/lang/Iterable;

    .line 1740
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p1, v3

    goto :goto_2

    .line 1741
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 113
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCameraBackendId-AKmI2lo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCameraBackendId-AKmI2lo()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_4

    if-nez v4, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v1, v4}, Landroidx/camera/camera2/pipe/CameraBackendId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_2

    move p1, v2

    :goto_2
    if-eqz p1, :cond_9

    .line 117
    iget-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->graphConfigs:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 117
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v1

    .line 1635
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 117
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->graphConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each CameraGraph.Config must have a distinct camera id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each CameraGraph.Config must use the same camera backend!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create ConcurrentGraphConfig without 2 or more CameraGraph.Config(s)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getGraphConfigs()Ljava/util/List;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->graphConfigs:Ljava/util/List;

    return-object v0
.end method
