.class public final Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/internal/compat/quirk/SoftwareJpegEncodingPreferredQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

.field private static final KNOWN_AFFECTED_FRONT_CAMERA_DEVICES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->INSTANCE:Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;

    .line 39
    const-string v0, "redmi note 8 pro"

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->KNOWN_AFFECTED_FRONT_CAMERA_DEVICES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled(Landroidx/camera/camera2/pipe/CameraMetadata;)Z
    .locals 3

    const-string v0, "cameraMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Landroidx/camera/camera2/compat/quirk/JpegCaptureDownsizingQuirk;->KNOWN_AFFECTED_FRONT_CAMERA_DEVICES:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "LENS_FACING"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
