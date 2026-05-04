.class public final Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/internal/ScreenFlashWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/core/internal/ScreenFlashWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroidx/camera/core/ImageCapture$ScreenFlash;)Landroidx/camera/core/internal/ScreenFlashWrapper;
    .locals 2

    .line 40
    new-instance v0, Landroidx/camera/core/internal/ScreenFlashWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/camera/core/internal/ScreenFlashWrapper;-><init>(Landroidx/camera/core/ImageCapture$ScreenFlash;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
