.class public final Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/TemporalNoiseQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic workaroundByCaptureIntentPreview()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$-CC;->$default$workaroundByCaptureIntentPreview(Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;)Z

    move-result v0

    return v0
.end method
