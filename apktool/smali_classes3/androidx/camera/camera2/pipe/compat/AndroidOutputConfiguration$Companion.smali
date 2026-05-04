.class public final Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    .line 159
    sget-object p3, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p3

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    .line 164
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p8

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p9, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    const/4 p10, 0x0

    :cond_8
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_9

    const/4 p11, -0x1

    :cond_9
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_a

    move-object p12, v0

    .line 156
    :cond_a
    invoke-virtual/range {p0 .. p12}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object p0

    return-object p0
.end method

.method private final enableSurfaceSharingCompat(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 3

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 322
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->enableSurfaceSharing(Landroid/hardware/camera2/params/OutputConfiguration;)V

    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceSharing"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported on API "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (requires API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final setPhysicalCameraIdCompat-8Ri2elo(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V
    .locals 2

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-lt v0, v1, :cond_0

    .line 329
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "physicalCameraId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported on API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (requires API "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final toKlass(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Ljava/lang/Class;
    .locals 3

    .line 301
    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_TEXTURE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class p1, Landroid/graphics/SurfaceTexture;

    return-object p1

    .line 302
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_VIEW()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p1, Landroid/view/SurfaceHolder;

    return-object p1

    .line 303
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getMEDIA_CODEC()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x23

    if-eqz v1, :cond_3

    .line 304
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 307
    const-class p1, Landroid/media/MediaCodec;

    return-object p1

    .line 304
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OutputType.MEDIA_CODEC requires API 35 or higher."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getMEDIA_RECORDER()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_4

    .line 313
    const-class p1, Landroid/media/MediaRecorder;

    return-object p1

    .line 310
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OutputType.MEDIA_RECORDER requires API 35 or higher."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OutputType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final create-gWWoySg(Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 11

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p11

    move-object/from16 v4, p12

    const-string v5, "outputType"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "sensorPixelModes"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v5, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v6

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x21

    const-string v9, "CXCP"

    if-eqz v6, :cond_2

    .line 174
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x23

    if-lt v6, v10, :cond_2

    .line 176
    const-string p1, "Required value was null."

    if-eqz p2, :cond_1

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2}, Landroidx/camera/camera2/pipe/compat/Api35Compat;->newImageReaderOutputConfiguration(ILandroid/util/Size;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    :goto_0
    move-object p2, p1

    goto/16 :goto_2

    .line 177
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 176
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 179
    :cond_2
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    const/4 p2, -0x1

    if-eq v3, p2, :cond_3

    .line 191
    :try_start_0
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion$$ExternalSyntheticApiModelOutline2;->m()V

    invoke-static {v3, p1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion$$ExternalSyntheticApiModelOutline0;->m(ILandroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .line 193
    :cond_3
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion$$ExternalSyntheticApiModelOutline2;->m()V

    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :goto_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 75
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create an OutputConfiguration for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {v9, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v7

    .line 181
    :cond_5
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "non-null surface!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_13

    if-eqz v2, :cond_12

    .line 210
    invoke-direct {p0, p3}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->toKlass(Landroidx/camera/camera2/pipe/OutputStream$OutputType;)Ljava/lang/Class;

    move-result-object p1

    .line 211
    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->newOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p1

    goto :goto_0

    :goto_2
    if-eqz p10, :cond_7

    .line 216
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->enableSurfaceSharingCompat(Landroid/hardware/camera2/params/OutputConfiguration;)V

    :cond_7
    if-eqz v4, :cond_8

    .line 221
    invoke-direct {p0, p2, v4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->setPhysicalCameraIdCompat-8Ri2elo(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    .line 224
    :cond_8
    const-string p1, ". This may result in unexpected behavior. Requested "

    if-eqz p4, :cond_a

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_9

    .line 226
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v0

    invoke-static {p2, v0}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setMirrorMode(Landroid/hardware/camera2/params/OutputConfiguration;I)V

    goto :goto_3

    .line 228
    :cond_9
    sget-object v2, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->Companion:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode$Companion;->getMIRROR_MODE_AUTO-DrUKqn0()I

    move-result v2

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v3

    invoke-static {v3, v2}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 229
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set mirrorMode to a non-default value on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v0

    .line 230
    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    if-eqz p6, :cond_c

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_b

    .line 255
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setDynamicRangeProfile(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    goto :goto_4

    .line 257
    :cond_b
    sget-object v2, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->Companion:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile$Companion;->getSTANDARD-fFAQAUE()J

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v3}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 258
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set dynamicRangeProfile to a non-default value on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual/range {p6 .. p6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v5

    .line 259
    invoke-static {v5, v6}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    if-eqz p7, :cond_d

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_d

    .line 269
    invoke-virtual/range {p7 .. p7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroidx/camera/camera2/pipe/compat/Api33Compat;->setStreamUseCase(Landroid/hardware/camera2/params/OutputConfiguration;J)V

    .line 273
    :cond_d
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_f

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v7

    .line 279
    :cond_f
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add sensorPixelModeUsed value on API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_10
    :goto_5
    new-instance p1, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    .line 291
    invoke-static {p2}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->getMaxSharedSurfaceCount(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0

    goto :goto_6

    :cond_11
    const/4 v0, 0x1

    :goto_6
    const/4 v1, 0x0

    move/from16 p3, p10

    move p4, v0

    move-object/from16 p6, v1

    move-object/from16 p5, v4

    .line 287
    invoke-direct/range {p1 .. p6}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 207
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Size must defined when creating a deferred OutputConfiguration."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_13
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deferred OutputConfigurations are not supported on API "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string p1, " (requires API 26)"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
