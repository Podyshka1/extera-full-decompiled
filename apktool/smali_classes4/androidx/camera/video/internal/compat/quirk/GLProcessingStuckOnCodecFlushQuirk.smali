.class public final Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isPositivoTwist2Pro()Z
    .locals 3

    .line 43
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "positivo"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "twist 2 pro"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final load()Z
    .locals 1

    .line 38
    sget-object v0, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;->isPositivoTwist2Pro()Z

    move-result v0

    return v0
.end method
