.class public final Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/workaround/TargetAspectRatio$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->Companion:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)I
    .locals 1

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamConfigurationMapCompat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-direct {v0, p1, p2}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    .line 43
    sget-object p1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class p2, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;->getCorrectedAspectRatio()I

    move-result p1

    return p1

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class p2, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;->getCorrectedAspectRatio()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x3

    return p1
.end method
