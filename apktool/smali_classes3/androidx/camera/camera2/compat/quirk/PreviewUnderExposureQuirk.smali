.class public final Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;
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
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

.field private static final isTclDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;->INSTANCE:Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;

    .line 44
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "TCL"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;->isTclDevice:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final load()Z
    .locals 1

    .line 41
    sget-boolean v0, Landroidx/camera/camera2/compat/quirk/PreviewUnderExposureQuirk;->isTclDevice:Z

    return v0
.end method
