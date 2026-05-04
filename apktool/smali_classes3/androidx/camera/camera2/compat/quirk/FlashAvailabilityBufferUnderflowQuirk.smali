.class public final Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;,
        Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;

.field private static final KNOWN_AFFECTED_MODELS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$Companion;

    .line 44
    sget-object v0, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo;->Companion:Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo$Companion;

    const-string v1, "lemp"

    const-string/jumbo v2, "sprd"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo$Companion;->invoke(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo;

    move-result-object v1

    .line 45
    const-string v3, "DM20C"

    invoke-virtual {v0, v2, v3}, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo$Companion;->invoke(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk$DeviceInfo;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 42
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;->KNOWN_AFFECTED_MODELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getKNOWN_AFFECTED_MODELS$cp()Ljava/util/Set;
    .locals 1

    .line 37
    sget-object v0, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;->KNOWN_AFFECTED_MODELS:Ljava/util/Set;

    return-object v0
.end method
