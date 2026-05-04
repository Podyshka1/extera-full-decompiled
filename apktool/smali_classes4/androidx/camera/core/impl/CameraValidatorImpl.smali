.class public final Landroidx/camera/core/impl/CameraValidatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;,
        Landroidx/camera/core/impl/CameraValidatorImpl$Companion;,
        Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/impl/CameraValidatorImpl$Companion;


# instance fields
.field private final availableCamerasSelector:Landroidx/camera/core/CameraSelector;

.field private final context:Landroid/content/Context;

.field private final isVirtualDevice:Z

.field private final validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/impl/CameraValidatorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/CameraValidatorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/impl/CameraValidatorImpl;->Companion:Landroidx/camera/core/impl/CameraValidatorImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    .line 101
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/CameraValidatorImpl;->isVirtualDevice(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->isVirtualDevice:Z

    .line 102
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraValidatorImpl;->getValidationCriteria()Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    return-void
.end method

.method private final getValidationCriteria()Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;
    .locals 5

    .line 180
    iget-object v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 181
    iget-object v1, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->availableCamerasSelector:Landroidx/camera/core/CameraSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    const-string v2, "android.hardware.camera"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 183
    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v3, v4

    .line 190
    :cond_4
    new-instance v0, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-direct {v0, v2, v3}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;-><init>(ZZ)V

    return-object v0
.end method

.method private final hasCamera(Ljava/util/Set;Landroidx/camera/core/CameraSelector;)Z
    .locals 1

    .line 170
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isVirtualDevice(Landroid/content/Context;)Z
    .locals 2

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 195
    sget-object v0, Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;->INSTANCE:Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/CameraValidatorImpl$Api34Impl;->getDeviceId(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public isChangeInvalid(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 8

    const-string v0, "currentCameras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removedCameras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->isVirtualDevice:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckFront()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 152
    :cond_0
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v2, "DEFAULT_BACK_CAMERA"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/impl/CameraValidatorImpl;->hasCamera(Ljava/util/Set;Landroidx/camera/core/CameraSelector;)Z

    move-result v0

    .line 153
    sget-object v3, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    const-string v4, "DEFAULT_FRONT_CAMERA"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Landroidx/camera/core/impl/CameraValidatorImpl;->hasCamera(Ljava/util/Set;Landroidx/camera/core/CameraSelector;)Z

    move-result v3

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Landroidx/camera/core/CameraIdentifier;

    .line 155
    invoke-virtual {v6}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    move-result-object v6

    .line 1635
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 774
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/camera/core/impl/CameraInternal;

    .line 157
    invoke-interface {v7}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v7

    invoke-interface {v7}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 865
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 159
    sget-object p2, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/CameraValidatorImpl;->hasCamera(Ljava/util/Set;Landroidx/camera/core/CameraSelector;)Z

    move-result p2

    .line 160
    sget-object v2, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Landroidx/camera/core/impl/CameraValidatorImpl;->hasCamera(Ljava/util/Set;Landroidx/camera/core/CameraSelector;)Z

    move-result p1

    .line 162
    iget-object v2, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckBack()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    move p2, v4

    goto :goto_2

    :cond_4
    move p2, v1

    .line 163
    :goto_2
    iget-object v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckFront()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    :goto_4
    return v4

    :cond_8
    :goto_5
    return v1
.end method

.method public validateOnFirstInit(Landroidx/camera/core/impl/CameraRepository;)V
    .locals 4

    const-string v0, "cameraRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->isVirtualDevice:Z

    const-string v1, "CameraValidator"

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual device with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string p1, " cameras. Skipping validation."

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying camera lens facing on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    sget-object v0, Landroidx/camera/core/CameraSelector;->DEFAULT_BACK_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    const-string v2, "Camera LENS_FACING_BACK verification failed"

    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 126
    :goto_1
    iget-object v2, p0, Landroidx/camera/core/impl/CameraValidatorImpl;->validationCriteria:Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;

    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraValidatorImpl$ValidationCriteria;->getCheckFront()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    :try_start_1
    sget-object v2, Landroidx/camera/core/CameraSelector;->DEFAULT_FRONT_CAMERA:Landroidx/camera/core/CameraSelector;

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 130
    const-string v3, "Camera LENS_FACING_FRONT verification failed"

    invoke-static {v1, v3, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    return-void

    .line 136
    :cond_3
    new-instance v1, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 138
    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    .line 136
    const-string v2, "Expected camera missing from device."

    invoke-direct {v1, v2, p1, v0}, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
