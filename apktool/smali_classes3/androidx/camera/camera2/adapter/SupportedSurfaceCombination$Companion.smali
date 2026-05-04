.class public final Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isUltraHdrOn(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;Ljava/util/List;Ljava/util/Map;)Z
    .locals 0

    .line 2396
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;->isUltraHdrOn(Ljava/util/List;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private final isUltraHdrOn(Ljava/util/List;Ljava/util/Map;)Z
    .locals 3

    .line 2401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1005

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 2402
    invoke-virtual {v0}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    .line 2407
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 2408
    invoke-interface {p2}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    move-result p2

    if-ne p2, v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
