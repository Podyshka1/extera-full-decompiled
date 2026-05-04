.class public final Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk;->Companion:Landroidx/camera/camera2/compat/quirk/AspectRatioLegacyApi21Quirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCorrectedAspectRatio()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
