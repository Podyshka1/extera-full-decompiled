.class public final Landroidx/camera/camera2/pipe/CameraGraph$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final cameraBackendId:Ljava/lang/String;

.field private concurrentCameraGraphs:Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

.field private final customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

.field private final defaultListeners:Ljava/util/List;

.field private final defaultParameters:Ljava/util/Map;

.field private final defaultTemplate:I

.field private final exclusiveStreamGroups:Ljava/util/List;

.field private final flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

.field private final graphStateListeners:Ljava/util/List;

.field private final input:Ljava/util/List;

.field private final metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

.field private final postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

.field private final requiredParameters:Ljava/util/Map;

.field private final sessionColorSpace:Ljava/lang/String;

.field private final sessionMode:I

.field private final sessionParameters:Ljava/util/Map;

.field private final sessionTemplate:I

.field private final streams:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;)V
    .locals 10

    move-object/from16 v0, p7

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    const-string v9, "camera"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "streams"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "exclusiveStreamGroups"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "sessionParameters"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "defaultParameters"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "defaultListeners"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "graphStateListeners"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "requiredParameters"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "metadataTransform"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "flags"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 80
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 81
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    move-object p1, p5

    .line 82
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    move/from16 p1, p6

    .line 83
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 84
    iput-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    move/from16 p1, p8

    .line 85
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    move/from16 p1, p9

    .line 86
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 87
    iput-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 88
    iput-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 89
    iput-object v3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 90
    iput-object v4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 91
    iput-object v5, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    .line 92
    iput-object v6, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    .line 93
    iput-object v7, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 94
    iput-object v8, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    move-object/from16 p1, p18

    .line 95
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    if-eqz v5, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Setting both cameraBackendId and customCameraBackend is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 83
    invoke-static {v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v1

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 84
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 85
    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v1

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 86
    invoke-static {v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 87
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v12, v1

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 88
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    goto :goto_8

    :cond_8
    move-object/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    goto :goto_9

    :cond_9
    move-object/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 90
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v15, v1

    goto :goto_a

    :cond_a
    move-object/from16 v15, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 93
    new-instance v1, Landroidx/camera/camera2/pipe/MetadataTransform;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 p3, v1

    move/from16 p7, v3

    move-object/from16 p8, v4

    move/from16 p4, v18

    move/from16 p5, v19

    move-object/from16 p6, v20

    invoke-direct/range {p3 .. p8}, Landroidx/camera/camera2/pipe/MetadataTransform;-><init>(IILandroidx/camera/camera2/pipe/MetadataTransform$TransformFn;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v1

    goto :goto_d

    :cond_d
    move-object/from16 v18, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 94
    new-instance v1, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 p3, v1

    move/from16 p12, v3

    move-object/from16 p13, v4

    move/from16 p4, v19

    move/from16 p5, v20

    move-object/from16 p6, v21

    move-object/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v24

    move/from16 p10, v25

    move/from16 p11, v26

    invoke-direct/range {p3 .. p13}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v1

    goto :goto_e

    :cond_e
    move-object/from16 v19, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    move-object/from16 v20, v2

    goto :goto_f

    :cond_f
    move-object/from16 v20, p18

    :goto_f
    const/16 v21, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 77
    invoke-direct/range {v2 .. v21}, Landroidx/camera/camera2/pipe/CameraGraph$Config;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p18}, Landroidx/camera/camera2/pipe/CameraGraph$Config;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    iget v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    iget v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    iget v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    if-nez v1, :cond_10

    if-nez v3, :cond_f

    move v1, v0

    goto :goto_1

    :cond_f
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_10
    if-nez v3, :cond_11

    goto :goto_0

    :cond_11
    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/CameraBackendId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_17

    if-nez p1, :cond_16

    move p1, v0

    goto :goto_3

    :cond_16
    :goto_2
    move p1, v2

    goto :goto_3

    :cond_17
    if-nez p1, :cond_18

    goto :goto_2

    :cond_18
    invoke-static {v1, p1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_3
    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public final getCameraBackendId-AKmI2lo()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->concurrentCameraGraphs:Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    return-object v0
.end method

.method public final getCustomCameraBackend()Landroidx/camera/camera2/pipe/CameraBackendFactory;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    return-object v0
.end method

.method public final getDefaultListeners()Ljava/util/List;
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultParameters()Ljava/util/Map;
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getDefaultTemplate-fGx8uWA()I
    .locals 1

    .line 86
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    return v0
.end method

.method public final getExclusiveStreamGroups()Ljava/util/List;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags()Landroidx/camera/camera2/pipe/CameraGraph$Flags;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    return-object v0
.end method

.method public final getGraphStateListeners()Ljava/util/List;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getInput()Ljava/util/List;
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    return-object v0
.end method

.method public final getPostviewStream()Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    return-object v0
.end method

.method public final getRequiredParameters()Ljava/util/Map;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getSessionColorSpace-dxVZaPA()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionMode-2uNL3no()I
    .locals 1

    .line 85
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    return v0
.end method

.method public final getSessionParameters()Ljava/util/Map;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getSessionTemplate-fGx8uWA()I
    .locals 1

    .line 83
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    return v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraId;->hashCode-impl(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->hashCode-impl(Ljava/lang/String;)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/MetadataTransform;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->hashCode-impl(Ljava/lang/String;)I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final setConcurrentCameraGraphs$camera_camera2_pipe(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)V
    .locals 0

    .line 98
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->concurrentCameraGraphs:Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveStreamGroups="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postviewStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphStateListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraBackendId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->cameraBackendId:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customCameraBackend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->customCameraBackend:Landroidx/camera/camera2/pipe/CameraBackendFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadataTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionColorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionColorSpace:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraColorSpace;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
