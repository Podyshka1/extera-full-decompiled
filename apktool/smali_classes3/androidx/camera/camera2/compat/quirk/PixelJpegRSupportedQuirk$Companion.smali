.class public final Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->hasIssue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
