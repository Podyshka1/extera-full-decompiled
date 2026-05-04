.class public final Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;
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
        Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;


# instance fields
.field private final streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

.field private final supportedResolution$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$bXAkRXoJlahpxssqlwQqYY8ViaU(Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->supportedResolution_delegate$lambda$0(Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V
    .locals 1

    const-string/jumbo v0, "streamConfigurationMapCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 55
    new-instance p1, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->supportedResolution$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getSupportedResolution()Ljava/util/List;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->supportedResolution$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final supportedResolution_delegate$lambda$0(Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;)Ljava/util/List;
    .locals 3

    .line 57
    iget-object p0, p0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->streamConfigurationMapCompat:Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 62
    :cond_1
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportedResolutions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getSupportedResolutions()Ljava/util/List;
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->getSupportedResolution()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
