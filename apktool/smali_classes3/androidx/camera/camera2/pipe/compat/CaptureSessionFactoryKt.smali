.class public abstract Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$buildSimpleOutputSurfaceMap(Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildSimpleOutputSurfaceMap(Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
    .locals 35

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "graphConfig"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "streamGraph"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "surfaces"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 398
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 400
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 401
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const-string v10, "Required value was null."

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/media/ImageSource;

    .line 402
    invoke-virtual {v0, v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 403
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v11

    .line 404
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-lt v9, v12, :cond_6

    .line 417
    const-class v9, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    check-cast v8, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;

    .line 418
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->getOutputConfigurations$camera_camera2_pipe()Ljava/util/List;

    move-result-object v8

    .line 419
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v9, v12, :cond_4

    .line 421
    move-object v9, v11

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_0

    .line 422
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/camera/camera2/pipe/OutputStream;

    .line 423
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v14

    .line 426
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputConfigMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_3

    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 427
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getExternalOutputConfig()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v15

    if-nez v15, :cond_2

    .line 432
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 427
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "External OutputConfiguration shouldn\'t be set in multi-output streams configured with ImageSource.Config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot configure multiple outputs pre-S!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_8
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getStreams()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream;

    .line 444
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v11

    .line 445
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_a

    .line 446
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v8

    invoke-static {v8}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    if-eqz v8, :cond_9

    .line 448
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v11

    invoke-static {v11}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v11

    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 451
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/camera2/pipe/OutputStream;

    .line 452
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputConfigMap$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_e

    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 454
    invoke-virtual {v13}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getExternalOutputConfig()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v14

    if-nez v14, :cond_c

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v14

    :cond_c
    if-eqz v14, :cond_d

    .line 457
    invoke-virtual {v14}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v13

    goto :goto_4

    .line 459
    :cond_d
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v13

    invoke-static {v13}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    :goto_4
    if-eqz v13, :cond_b

    .line 462
    invoke-interface {v12}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v12

    invoke-static {v12}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v12

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 452
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_f
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputConfigs$camera_camera2_pipe()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 469
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 1617
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1625
    check-cast v14, Landroidx/camera/camera2/pipe/CameraStream;

    .line 469
    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v14

    invoke-static {v14}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Surface;

    if-eqz v14, :cond_10

    .line 1625
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 472
    :cond_11
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getExternalOutputConfig()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v12

    if-nez v12, :cond_12

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v12

    :cond_12
    move-object v15, v12

    const/16 v12, 0x21

    .line 473
    const-string v14, "! Missing surfaces for "

    const-string v8, "Surfaces are not yet available for "

    if-eqz v15, :cond_17

    .line 474
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    if-ne v13, v9, :cond_14

    .line 480
    new-instance v14, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v19}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 479
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_7
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 475
    :cond_14
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    .line 475
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 476
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :cond_17
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDeferrable()Z

    move-result v9

    const-string v15, "Failed to create AndroidOutputConfiguration for "

    const-string v12, "CXCP"

    const/16 v17, -0x1

    if-eqz v9, :cond_1b

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-eq v9, v3, :cond_1b

    .line 492
    sget-object v20, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    .line 494
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSize()Landroid/util/Size;

    move-result-object v29

    .line 495
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDeferredOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v24

    .line 497
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    .line 498
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v26

    .line 499
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v27

    .line 500
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSensorPixelModes()Ljava/util/List;

    move-result-object v28

    .line 501
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSurfaceSharing()Z

    move-result v30

    .line 502
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getGroupNumber()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_18
    move/from16 v31, v17

    .line 504
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 505
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_9

    :cond_19
    const/16 v32, 0x0

    :goto_9
    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    .line 492
    invoke-static/range {v20 .. v34}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 511
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 514
    :cond_1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamBuilder$camera_camera2_pipe()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/camera2/pipe/CameraStream;

    .line 516
    invoke-virtual {v9}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v9

    invoke-static {v9}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 522
    :cond_1b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v3, v9, :cond_23

    .line 528
    sget-object v20, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    .line 529
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/view/Surface;

    .line 530
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v24

    .line 531
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    .line 532
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v26

    .line 533
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v27

    .line 534
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSensorPixelModes()Ljava/util/List;

    move-result-object v28

    .line 535
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSize()Landroid/util/Size;

    move-result-object v29

    .line 536
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSurfaceSharing()Z

    move-result v30

    .line 537
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getGroupNumber()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_1c
    move/from16 v31, v17

    .line 539
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 540
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_b

    :cond_1d
    const/16 v32, 0x0

    :goto_b
    const/16 v33, 0x6

    const/16 v34, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    .line 528
    invoke-static/range {v20 .. v34}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;->create-gWWoySg$default(Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;Landroid/view/Surface;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Ljava/util/List;Landroid/util/Size;ZILjava/lang/String;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 546
    sget-object v3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1e
    const/4 v9, 0x1

    .line 549
    invoke-static {v13, v9}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    .line 550
    invoke-interface {v3, v12}, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;->addSurface(Landroid/view/Surface;)V

    goto :goto_c

    .line 552
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getPostviewStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getPostviewStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->get(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v8

    if-eqz v8, :cond_21

    if-nez v10, :cond_20

    .line 557
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move-object v10, v3

    :goto_d
    move-object/from16 v3, p0

    goto/16 :goto_5

    .line 560
    :cond_20
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 554
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Postview Stream in StreamGraph cannot be null for reprocessing request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 523
    :cond_23
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreams()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 774
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    .line 523
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 865
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 524
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_26
    new-instance v0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    invoke-direct {v0, v2, v4, v10, v5}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;-><init>(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)V

    return-object v0
.end method

.method private static final buildSimpleOutputSurfaceMap(Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Ljava/util/Map;
    .locals 4

    .line 573
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 574
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getStreams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraStream;

    .line 575
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    if-nez v2, :cond_1

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream;

    .line 577
    invoke-interface {v3}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 573
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
