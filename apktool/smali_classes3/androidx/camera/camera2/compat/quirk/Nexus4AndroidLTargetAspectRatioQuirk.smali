.class public final Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;

.field private static final DEVICE_MODELS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk$Companion;

    .line 43
    const-string v0, "NEXUS 4"

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/Nexus4AndroidLTargetAspectRatioQuirk;->DEVICE_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCorrectedAspectRatio()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
