.class public final Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

.field private final extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

.field private final streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 39
    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->streamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 41
    const-string p1, "OutputSizesCorrector"

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->tag:Ljava/lang/String;

    .line 43
    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class p2, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    .line 45
    const-class p2, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    return-void
.end method

.method private final addExtraSupportedOutputSizesByFormat(Ljava/util/List;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->extraSupportedOutputSizeQuirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;->getExtraSupportedResolutions(I)[Landroid/util/Size;

    move-result-object p2

    .line 80
    array-length v0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 81
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private final excludeProblematicOutputSizesByFormat(Ljava/util/List;I)V
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludedSupportedSizesQuirk:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 118
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final applyQuirks([Landroid/util/Size;I)[Landroid/util/Size;
    .locals 1

    const-string/jumbo v0, "sizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->addExtraSupportedOutputSizesByFormat(Ljava/util/List;I)V

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->excludeProblematicOutputSizesByFormat(Ljava/util/List;I)V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;->tag:Ljava/lang/String;

    const-string v0, "Sizes array becomes empty after excluding problematic output sizes."

    invoke-static {p2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    .line 38
    new-array p2, p2, [Landroid/util/Size;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1
.end method
