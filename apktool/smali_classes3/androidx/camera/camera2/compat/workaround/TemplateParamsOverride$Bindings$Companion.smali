.class public final Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideTemplateParamsOverride(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;
    .locals 1

    const-string v0, "cameraQuirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    .line 61
    sget-object v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;->workaroundByCaptureIntentPreview(Landroidx/camera/core/impl/Quirks;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-class v0, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailedForVideoSnapshotQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpTemplateParamsOverride;

    return-object p1

    .line 64
    :cond_1
    :goto_0
    new-instance v0, Landroidx/camera/camera2/compat/workaround/TemplateParamsQuirkOverride;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/compat/workaround/TemplateParamsQuirkOverride;-><init>(Landroidx/camera/core/impl/Quirks;)V

    return-object v0
.end method
