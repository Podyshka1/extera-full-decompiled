.class public final Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final quirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->quirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->quirk:Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->getExtraSupportedSurfaceCombinations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
