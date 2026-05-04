.class public final Landroidx/camera/camera2/compat/quirk/CameraQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/CameraQuirks$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CameraQuirks$Companion;


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final quirks$delegate:Lkotlin/Lazy;

.field private final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;


# direct methods
.method public static synthetic $r8$lambda$3nXzTEXW5hJTW6N-AsrAgNfo7qI(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/Quirks;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->quirks_delegate$lambda$0(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/Quirks;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->Companion:Landroidx/camera/camera2/compat/quirk/CameraQuirks$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V
    .locals 1

    const-string/jumbo v0, "streamConfigurationMapCompat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 35
    iput-object p2, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 41
    new-instance p1, Landroidx/camera/camera2/compat/quirk/CameraQuirks$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->quirks$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final quirks_delegate$lambda$0(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/core/impl/Quirks;
    .locals 5

    .line 42
    invoke-static {}, Landroidx/camera/core/impl/QuirkSettingsHolder;->instance()Landroidx/camera/core/impl/QuirkSettingsHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/QuirkSettingsHolder;->get()Landroidx/camera/core/impl/QuirkSettings;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v2, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    if-nez v2, :cond_1

    .line 45
    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 136
    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    .line 45
    const-string v0, "Failed to enable quirks: camera metadata injection failed"

    .line 137
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    new-instance p0, Landroidx/camera/core/impl/Quirks;

    invoke-direct {p0, v1}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/List;)V

    return-object p0

    .line 54
    :cond_1
    sget-object v3, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;

    invoke-virtual {v3, v2}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 52
    const-class v3, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    new-instance v2, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-direct {v2, v3}, Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    sget-object v2, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 60
    const-class v3, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    new-instance v2, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    sget-object v2, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;->Companion:Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 68
    const-class v3, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    new-instance v2, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_4
    sget-object v2, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 76
    const-class v3, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    new-instance v2, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    invoke-direct {v2, v3}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;-><init>(Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    sget-object v2, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 84
    const-class v3, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    new-instance v2, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/CameraNoResponseWhenEnablingFlashQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6
    sget-object v2, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 92
    const-class v3, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    new-instance v2, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_7
    sget-object v2, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 100
    const-class v3, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 105
    new-instance v2, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/CloseCaptureSessionOnVideoQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_8
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 108
    const-class v3, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 113
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_9
    sget-object v2, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 116
    const-class v3, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 121
    new-instance v2, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_a
    sget-object v2, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 124
    const-class v3, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 129
    new-instance v2, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/FlashTooSlowQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_b
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 132
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 137
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_c
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 140
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 145
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFlashNotFireQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_d
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 148
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 153
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_e
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 156
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 161
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWithFlashUnderexposureQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_f
    sget-object v2, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 164
    const-class v3, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 169
    new-instance v2, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_10
    sget-object v2, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->INSTANCE:Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v3

    .line 172
    const-class v4, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    invoke-virtual {v0, v4, v3}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_11
    sget-object v2, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 180
    const-class v3, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 185
    new-instance v2, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_12
    sget-object v2, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 188
    const-class v3, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 193
    new-instance v2, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_13
    sget-object v2, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 196
    const-class v3, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 201
    new-instance v2, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-direct {v2, v3}, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_14
    sget-object v2, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 204
    const-class v3, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 209
    new-instance v2, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/YuvImageOnePixelShiftQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_15
    sget-object v2, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 212
    const-class v3, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 217
    new-instance v2, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/PreviewStretchWhenVideoCaptureIsBoundQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_16
    sget-object v2, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 220
    const-class v3, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 225
    new-instance v2, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_17
    sget-object v2, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 228
    const-class v3, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 233
    new-instance v2, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_18
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 236
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 241
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedWhenVideoCaptureIsBoundQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_19
    sget-object v2, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;

    iget-object v3, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v2

    .line 244
    const-class v3, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 249
    new-instance v2, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1a
    sget-object v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 252
    const-class v3, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 257
    new-instance v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1b
    sget-object v2, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk$Companion;->isEnabled()Z

    move-result v2

    .line 260
    const-class v3, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;

    invoke-virtual {v0, v3, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 265
    new-instance v2, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;

    invoke-direct {v2}, Landroidx/camera/camera2/compat/quirk/AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1c
    sget-object v2, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {v2, p0}, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk$Companion;->isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    .line 268
    const-class v2, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;

    invoke-virtual {v0, v2, p0}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 273
    new-instance p0, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/UltraWideFlashCaptureUnderexposureQuirk;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1d
    new-instance p0, Landroidx/camera/core/impl/Quirks;

    invoke-direct {p0, v1}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera2 CameraQuirks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/core/impl/Quirks;->toString(Landroidx/camera/core/impl/Quirks;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraQuirks"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final getQuirks()Landroidx/camera/core/impl/Quirks;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->quirks$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/Quirks;

    return-object v0
.end method
