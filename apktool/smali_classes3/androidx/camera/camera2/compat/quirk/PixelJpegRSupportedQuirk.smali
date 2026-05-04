.class public final Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;
.super Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;-><init>()V

    return-void
.end method


# virtual methods
.method public getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;
    .locals 1

    .line 35
    sget-object v0, Landroidx/core/backported/fixes/KnownIssues;->KI_398591036:Landroidx/core/backported/fixes/KnownIssue;

    return-object v0
.end method
