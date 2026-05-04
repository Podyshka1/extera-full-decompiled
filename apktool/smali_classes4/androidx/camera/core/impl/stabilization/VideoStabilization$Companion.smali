.class public final Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/stabilization/VideoStabilization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/core/impl/stabilization/VideoStabilization$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from$camera_core(II)Landroidx/camera/core/impl/stabilization/VideoStabilization;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 53
    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 55
    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p1

    .line 57
    :cond_2
    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->UNSPECIFIED:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p1

    .line 51
    :cond_3
    :goto_0
    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->OFF:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    return-object p1
.end method
