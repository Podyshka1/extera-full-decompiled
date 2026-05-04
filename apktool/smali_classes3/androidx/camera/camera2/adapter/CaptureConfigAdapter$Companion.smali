.class public final Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CaptureConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I
    .locals 1

    const-string v0, "$this$getStillCaptureTemplate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 217
    invoke-static {v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 225
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x2

    :goto_1
    if-eq p2, v0, :cond_3

    .line 231
    invoke-static {p2}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p1

    return p1

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p1

    return p1
.end method
