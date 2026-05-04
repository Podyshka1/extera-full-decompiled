.class public Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final BUILD_HARDWARE_SET:Ljava/util/Set;

.field private static final BUILD_MODEL_SET:Ljava/util/Set;

.field private static final BUILD_SOC_MODEL_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "samsungexynos7870"

    const-string v2, "qcom"

    const-string v3, "samsungexynos7570"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_HARDWARE_SET:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "sm6375"

    const-string v2, "sm7325"

    const-string v3, "sm4350"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_SOC_MODEL_SET:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "m2007j20cg"

    const-string v2, "m2007j20ct"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_MODEL_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAffectedModel()Z
    .locals 2

    .line 71
    sget-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_MODEL_SET:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isAffectedSamsungDevice()Z
    .locals 2

    .line 66
    const-string v0, "SAMSUNG"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_HARDWARE_SET:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static load()Z
    .locals 1

    .line 57
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->usesAffectedSoc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->isAffectedSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->isAffectedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static usesAffectedSoc()Z
    .locals 2

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->BUILD_SOC_MODEL_SET:Ljava/util/Set;

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
