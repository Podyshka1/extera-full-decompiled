.class public final Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideInactiveSurfaceCloser(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;
    .locals 1

    const-string v0, "cameraQuirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    .line 56
    const-class v0, Landroidx/camera/camera2/compat/quirk/ConfigureSurfaceToSecondarySessionFailQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-class v0, Landroidx/camera/camera2/compat/quirk/PreviewOrientationIncorrectQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-class v0, Landroidx/camera/camera2/compat/quirk/TextureViewIsClosedQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object p1, Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;

    invoke-direct {p1}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloserImpl;-><init>()V

    return-object p1
.end method
