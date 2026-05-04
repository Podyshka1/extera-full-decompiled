.class public final Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;
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
    invoke-direct {p0}, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final load()Z
    .locals 1

    .line 40
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;->access$isMotorolaEdge20Fusion$cp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;->access$isSamsungSmT580$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
