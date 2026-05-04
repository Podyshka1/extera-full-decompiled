.class public final Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/quirk/UseTorchAsFlashQuirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;
    }
.end annotation


# static fields
.field private static final BUILD_MODELS:Ljava/util/List;

.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk$Companion;

    .line 56
    const-string v16, "SM-G935U"

    .line 57
    const-string v17, "SM-G935P"

    const-string v2, "SM-G9300"

    const-string v3, "SM-G930R"

    const-string v4, "SM-G930A"

    const-string v5, "SM-G930V"

    const-string v6, "SM-G930T"

    const-string v7, "SM-G930U"

    const-string v8, "SM-G930P"

    const-string v9, "SM-SC02H"

    const-string v10, "SM-SCV33"

    const-string v11, "SM-G9350"

    const-string v12, "SM-G935R"

    const-string v13, "SM-G935A"

    const-string v14, "SM-G935V"

    const-string v15, "SM-G935T"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;->BUILD_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBUILD_MODELS$cp()Ljava/util/List;
    .locals 1

    .line 35
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureWashedOutImageQuirk;->BUILD_MODELS:Ljava/util/List;

    return-object v0
.end method
