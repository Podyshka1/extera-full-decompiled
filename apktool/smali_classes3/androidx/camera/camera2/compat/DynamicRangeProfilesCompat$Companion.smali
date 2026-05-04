.class public final Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCameraMetaData(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
    .locals 2

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 118
    invoke-static {}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion$$ExternalSyntheticApiModelOutline0;->m()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    const-string v1, "REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/DynamicRangeProfiles;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$Companion;->toDynamicRangesCompat(Landroid/hardware/camera2/params/DynamicRangeProfiles;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 121
    sget-object p1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl;->Companion:Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatBaseImpl$Companion;->getCOMPAT_INSTANCE()Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final toDynamicRangesCompat(Landroid/hardware/camera2/params/DynamicRangeProfiles;)Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 142
    new-instance v0, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;

    .line 143
    new-instance v1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompatApi33Impl;-><init>(Landroid/hardware/camera2/params/DynamicRangeProfiles;)V

    .line 142
    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;-><init>(Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;)V

    return-object v0

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported on API "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (requires API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
