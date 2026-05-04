.class public final Landroidx/camera/core/impl/CaptureConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CaptureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCameraCaptureCallbacks:Ljava/util/List;

.field private mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

.field private mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

.field private mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

.field private mPostviewEnabled:Z

.field private final mSurfaces:Ljava/util/Set;

.field private mTemplateType:I

.field private mUseRepeatingSurface:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    .line 249
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    const/4 v0, -0x1

    .line 250
    iput v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mPostviewEnabled:Z

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 253
    iput-boolean v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    .line 254
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    return-void
.end method

.method public static createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/CaptureConfig$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 276
    invoke-interface {p0, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureOptionUnpacker(Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;)Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v1, Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-direct {v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;-><init>()V

    .line 286
    invoke-interface {v0, p0, v1}, Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;->unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V

    return-object v1

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Implementation is missing option unpacker for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/camera/core/internal/TargetConfig;->getTargetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAllCameraCaptureCallbacks(Ljava/util/Collection;)V
    .locals 1

    .line 371
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 372
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAllTags(Landroidx/camera/core/impl/TagBundle;)V
    .locals 1

    .line 478
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/MutableTagBundle;->addTagBundle(Landroidx/camera/core/impl/TagBundle;)V

    return-void
.end method

.method public addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1

    .line 360
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V
    .locals 1

    .line 435
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    invoke-interface {v0, p1, p2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-void
.end method

.method public addImplementationOptions(Landroidx/camera/core/impl/Config;)V
    .locals 5

    .line 414
    invoke-interface {p1}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Config$Option;

    .line 418
    iget-object v2, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    iget-object v3, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    .line 427
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object v4

    .line 426
    invoke-interface {v3, v1, v4, v2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 1

    .line 389
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 459
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/impl/MutableTagBundle;->putTag(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public build()Landroidx/camera/core/impl/CaptureConfig;
    .locals 9

    .line 486
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    .line 488
    invoke-static {v2}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v2

    iget v3, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    iget-boolean v4, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mPostviewEnabled:Z

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v6, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    iget-object v7, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mMutableTagBundle:Landroidx/camera/core/impl/MutableTagBundle;

    .line 493
    invoke-static {v7}, Landroidx/camera/core/impl/TagBundle;->from(Landroidx/camera/core/impl/TagBundle;)Landroidx/camera/core/impl/TagBundle;

    move-result-object v7

    iget-object v8, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/impl/CaptureConfig;-><init>(Ljava/util/List;Landroidx/camera/core/impl/Config;IZLjava/util/List;ZLandroidx/camera/core/impl/TagBundle;Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-object v0
.end method

.method public clearSurfaces()V
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getExpectedFrameRateRange()Landroid/util/Range;
    .locals 3

    .line 309
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    invoke-static {}, Landroidx/camera/core/impl/CaptureConfig;->access$000()Landroidx/camera/core/impl/Config$Option;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    return-object v0
.end method

.method public getSurfaces()Ljava/util/Set;
    .locals 1

    .line 404
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getTemplateType()I
    .locals 1

    .line 305
    iget v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    return v0
.end method

.method public removeCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Z
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mCameraCaptureCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setExpectedFrameRateRange(Landroid/util/Range;)V
    .locals 1

    .line 329
    invoke-static {}, Landroidx/camera/core/impl/CaptureConfig;->access$000()Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    return-void
.end method

.method public setImplementationOptions(Landroidx/camera/core/impl/Config;)V
    .locals 0

    .line 408
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mImplementationOptions:Landroidx/camera/core/impl/MutableConfig;

    return-void
.end method

.method public setPreviewStabilization(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 338
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTemplateType(I)V
    .locals 0

    .line 320
    iput p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mTemplateType:I

    return-void
.end method

.method public setUseRepeatingSurface(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Landroidx/camera/core/impl/CaptureConfig$Builder;->mUseRepeatingSurface:Z

    return-void
.end method

.method public setVideoStabilization(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/Config$Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
