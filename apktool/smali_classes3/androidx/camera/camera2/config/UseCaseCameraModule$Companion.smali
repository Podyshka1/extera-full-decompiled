.class public final Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/UseCaseCameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCapturePipeline(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 2

    const-string v0, "capturePipelineImplProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capturePipelineTorchCorrectionProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;->isEnabled()Z

    move-result v0

    const-string v1, "get(...)"

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p1
.end method
