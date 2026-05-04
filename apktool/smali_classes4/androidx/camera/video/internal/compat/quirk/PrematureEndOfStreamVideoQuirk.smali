.class public final Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;
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
.field public static final INSTANCE:Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

.field private static final isCph1931:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

    invoke-direct {v0}, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

    .line 37
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OPPO"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "CPH1931"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    sput-boolean v2, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;->isCph1931:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final load()Z
    .locals 1

    .line 34
    sget-boolean v0, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;->isCph1931:Z

    return v0
.end method
