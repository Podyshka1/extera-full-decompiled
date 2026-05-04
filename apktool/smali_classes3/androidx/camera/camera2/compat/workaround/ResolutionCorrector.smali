.class public final Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    iput-object v0, p0, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    return-void
.end method


# virtual methods
.method public final insertOrPrioritize(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "configType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "supportedResolutions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;->extraCroppingQuirk:Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;->getVerifiedResolution(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-object p2

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 53
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method
