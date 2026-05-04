.class public final Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;

.field private static final KNOWN_AFFECTED_DEVICES:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk$Companion;

    .line 40
    const-string v0, "heroqltetmo"

    const-string v1, "k61v1_basic_ref"

    const-string v2, "heroqltevzw"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;->KNOWN_AFFECTED_DEVICES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKNOWN_AFFECTED_DEVICES$cp()Ljava/util/List;
    .locals 1

    .line 36
    sget-object v0, Landroidx/camera/camera2/compat/quirk/JpegHalCorruptImageQuirk;->KNOWN_AFFECTED_DEVICES:Ljava/util/List;

    return-object v0
.end method
