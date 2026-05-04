.class public final Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/EncoderProfilesProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;,
        Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Companion;


# instance fields
.field private final cameraId:I

.field private final cameraIdString:Ljava/lang/String;

.field private final cameraQuirks:Landroidx/camera/core/impl/Quirks;

.field private final hasValidCameraId:Z

.field private final mEncoderProfilesCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->Companion:Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V
    .locals 1

    const-string v0, "cameraIdString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraQuirks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraIdString:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraQuirks:Landroidx/camera/core/impl/Quirks;

    .line 44
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->mEncoderProfilesCache:Ljava/util/Map;

    .line 50
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    goto :goto_0

    .line 55
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Camera id is not an integer:  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraIdString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", unable to create EncoderProfilesProviderAdapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    const-string p2, "EncoderProfilesProviderAdapter"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p1, -0x1

    .line 59
    :goto_0
    iput-boolean p2, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->hasValidCameraId:Z

    .line 60
    iput p1, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraId:I

    return-void
.end method

.method private final createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 4

    const/4 v0, 0x0

    .line 151
    :try_start_0
    iget v1, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraId:I

    invoke-static {v1, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get CamcorderProfile by quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EncoderProfilesProviderAdapter"

    invoke-static {v2, p1, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 158
    invoke-static {p1}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/CamcorderProfile;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final findHighestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    .line 98
    sget-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final findLowestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 108
    sget-object v0, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    const-string v1, "QUALITY_HIGH_TO_LOW"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_1

    .line 109
    sget-object v1, Landroidx/camera/core/impl/EncoderProfilesProvider;->QUALITY_HIGH_TO_LOW:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    .line 120
    sget-object v0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;->INSTANCE:Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraIdString:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;->getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    sget-object v1, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    const-class v2, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v1

    const-string v2, "EncoderProfilesProviderAdapter"

    if-eqz v1, :cond_1

    .line 126
    const-string v0, "EncoderProfiles contains invalid video profiles, use CamcorderProfile to create EncoderProfilesProxy."

    .line 124
    invoke-static {v2, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroidx/camera/core/impl/compat/EncoderProfilesProxyCompat;->from(Landroid/media/EncoderProfiles;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 135
    const-string v1, "Failed to create EncoderProfilesProxy, EncoderProfiles might contain invalid video profiles. Use CamcorderProfile instead."

    .line 133
    invoke-static {v2, v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->createProfilesFromCamcorderProfile(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    return-object p1
.end method

.method private final isEncoderProfilesResolutionValidInQuirk(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z
    .locals 3

    .line 163
    iget-object v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraQuirks:Landroidx/camera/core/impl/Quirks;

    const-class v1, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object p1

    const-string v2, "getVideoProfiles(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 173
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CamcorderProfileResolutionQuirk;->getSupportedResolutions()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getResolution()Landroid/util/Size;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 3

    .line 72
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->hasValidCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    iget v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->cameraId:I

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 80
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p1

    .line 83
    :cond_2
    invoke-direct {p0, p1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->getProfilesInternal(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 84
    invoke-direct {p0, v0}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->isEncoderProfilesResolutionValidInQuirk(Landroidx/camera/core/impl/EncoderProfilesProxy;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->findHighestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    goto :goto_0

    .line 88
    :cond_4
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->findLowestQualityProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 92
    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->mEncoderProfilesCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hasProfile(I)Z
    .locals 2

    .line 64
    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->hasValidCameraId:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;->getAll(I)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
