.class public final Landroidx/camera/camera2/pipe/core/Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

.field private static final systemTimeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;


# direct methods
.method public static synthetic $r8$lambda$Sn9a-H_uwDlIe6WXrB7ByV3vFWw(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/Debug;->valueToString$lambda$0(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qyoCxQw_NlDyB2t4IONaMXi63jI(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/Debug;->formatParameterMap$lambda$0(Lkotlin/Pair;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/core/Debug;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/Debug;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 36
    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/SystemTimeSource;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/Debug;->systemTimeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 85
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": (None)\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    invoke-direct {v0, p3}, Landroidx/camera/camera2/pipe/core/Debug;->parametersToSortedStringPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x32

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final formatParameterMap$lambda$0(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final keyNameToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 137
    instance-of v0, p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "getName(...)"

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 138
    :cond_0
    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 139
    :cond_1
    instance-of v0, p1, Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 140
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final parametersToSortedStringPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/camera/camera2/pipe/core/Debug;->keyNameToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/core/Debug;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    :cond_0
    new-instance p1, Landroidx/camera/camera2/pipe/core/Debug$parametersToSortedStringPairs$$inlined$sortedBy$1;

    invoke-direct {p1}, Landroidx/camera/camera2/pipe/core/Debug$parametersToSortedStringPairs$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 146
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    new-instance v7, Landroidx/camera/camera2/pipe/core/Debug$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Landroidx/camera/camera2/pipe/core/Debug$$ExternalSyntheticLambda1;-><init>()V

    const/16 v8, 0x19

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v3, "["

    const-string v4, "]"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final valueToString$lambda$0(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 146
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/core/Debug;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final formatCameraGraphProperties(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraph;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "metadata"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "graphConfig"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cameraGraph"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getConcurrentCameraGraphs$camera_camera2_pipe()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->getCameraIds()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 158
    :goto_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v5, "LENS_FACING"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 159
    const-string v5, "External"

    const/4 v6, 0x2

    const-string v7, "Unknown"

    const/4 v8, 0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    const-string v4, "Front"

    goto :goto_4

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    .line 160
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v8, :cond_4

    const-string v4, "Back"

    goto :goto_4

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    .line 161
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_6

    move-object v4, v5

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, v7

    .line 166
    :goto_4
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v10, "INFO_SUPPORTED_HARDWARE_LEVEL"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_7

    goto :goto_5

    .line 167
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_8

    const-string v5, "Limited"

    goto :goto_a

    :cond_8
    :goto_5
    if-nez v9, :cond_9

    goto :goto_6

    .line 168
    :cond_9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v8, :cond_a

    const-string v5, "Full"

    goto :goto_a

    :cond_a
    :goto_6
    if-nez v9, :cond_b

    goto :goto_7

    .line 169
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_c

    const-string v5, "Legacy"

    goto :goto_a

    :cond_c
    :goto_7
    if-nez v9, :cond_d

    goto :goto_8

    .line 170
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_e

    const-string v5, "Level 3"

    goto :goto_a

    :cond_e
    :goto_8
    if-nez v9, :cond_f

    goto :goto_9

    .line 171
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move-object v5, v7

    .line 176
    :goto_a
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v6

    .line 177
    sget-object v8, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v9

    invoke-static {v6, v9}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v7, "High Speed"

    goto :goto_b

    .line 178
    :cond_11
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v9

    invoke-static {v6, v9}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v7, "Normal"

    goto :goto_b

    .line 179
    :cond_12
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v7, "Extension"

    .line 183
    :cond_13
    :goto_b
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v8, "REQUEST_AVAILABLE_CAPABILITIES"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_14

    const/16 v6, 0xb

    .line 187
    invoke-static {v0, v6}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 189
    const-string v0, "Logical"

    goto :goto_c

    .line 191
    :cond_14
    const-string v0, "Physical"

    .line 194
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (Camera "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    if-eqz v2, :cond_15

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Concurrent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Facing:    "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Mode:      "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, "Outputs:\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/StreamGraph;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "\n"

    const-string/jumbo v5, "toString(...)"

    const/16 v7, 0xc

    const/16 v9, 0x20

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream;

    .line 204
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1879
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_17

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_17
    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream;

    .line 205
    const-string v13, "  "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_18

    .line 206
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getStream()Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_e

    :cond_18
    const-string v10, ""

    .line 207
    :goto_e
    invoke-static {v10, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getId-4LaLFng()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/OutputId;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getFormat-8FPWQzE()I

    move-result v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x10

    invoke-static {v10, v13, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v10

    const/16 v13, 0x5d

    const-string v14, " ["

    if-eqz v10, :cond_19

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->unbox-impl()I

    move-result v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_19
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    .line 213
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->unbox-impl()J

    move-result-wide v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;->toString-impl(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1a
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->toString-impl(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1b
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v10

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->toString-impl(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1c
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroidx/camera/camera2/pipe/CameraId;->equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 217
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v11}, Landroidx/camera/camera2/pipe/OutputStream;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string v10, "]"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v12

    goto/16 :goto_d

    .line 224
    :cond_1e
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 225
    const-string v0, "Inputs:\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CameraGraphBase;->getStreams()Landroidx/camera/camera2/pipe/StreamGraph;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/StreamGraph;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/InputStream;

    .line 227
    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/InputStream;->getId-m1bwn9M()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/InputStreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/InputStream;->getFormat-8FPWQzE()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/InputStream;->getMaxImages()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v9}, Lkotlin/text/StringsKt;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 235
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session Template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionTemplate-fGx8uWA()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->getName-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v1, "Session Parameters"

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Landroidx/camera/camera2/pipe/core/Debug;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultTemplate-fGx8uWA()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/camera2/pipe/RequestTemplate;->getName-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "Default Parameters"

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getDefaultParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Landroidx/camera/camera2/pipe/core/Debug;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 241
    const-string v1, "Required Parameters"

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getRequiredParameters()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Landroidx/camera/camera2/pipe/core/Debug;->appendParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final formatParameterMap(Ljava/util/Map;I)Ljava/lang/String;
    .locals 9

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/Debug;->parametersToSortedStringPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Landroidx/camera/camera2/pipe/core/Debug$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroidx/camera/camera2/pipe/core/Debug$$ExternalSyntheticLambda0;-><init>()V

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    const/4 v5, 0x0

    move v4, p2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSystemTimeSource$camera_camera2_pipe()Landroidx/camera/camera2/pipe/core/SystemTimeSource;
    .locals 1

    .line 36
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->systemTimeSource:Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    return-object v0
.end method
