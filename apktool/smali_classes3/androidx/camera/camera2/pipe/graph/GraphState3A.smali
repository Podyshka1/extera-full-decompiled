.class public final Landroidx/camera/camera2/pipe/graph/GraphState3A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _state:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroidx/camera/camera2/pipe/graph/State3A;

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Landroidx/camera/camera2/pipe/graph/State3A;-><init>(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method public static synthetic update-7jOEVJU$default(Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    .line 122
    :cond_9
    invoke-virtual/range {p0 .. p10}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->update-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/State3A;

    return-object v0
.end method

.method public final toCaptureRequestParametersMap()Ljava/util/Map;
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;->getCurrent()Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/GraphState3AKt;->toCaptureRequestParameterMap(Landroidx/camera/camera2/pipe/graph/State3A;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final update-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 14

    .line 134
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphState3A;->_state:Lkotlinx/atomicfu/AtomicRef;

    .line 165
    :cond_0
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 166
    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/graph/State3A;

    if-nez p1, :cond_1

    .line 136
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeMode-O_cDUUs()Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-nez p2, :cond_2

    .line 137
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfMode-32_E3BI()Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 v4, p2

    :goto_1
    if-nez p3, :cond_3

    .line 138
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbMode-aLFtWSU()Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object/from16 v5, p3

    :goto_2
    if-nez p4, :cond_4

    .line 139
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getFlashMode-cL-19HE()Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object/from16 v6, p4

    :goto_3
    const/4 v7, 0x0

    if-eqz p5, :cond_6

    .line 140
    move-object/from16 v8, p5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v8, v7

    :cond_5
    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeRegions()Ljava/util/List;

    move-result-object v8

    :cond_7
    if-eqz p6, :cond_9

    .line 141
    move-object/from16 v9, p6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v9, v7

    :cond_8
    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_a

    :cond_9
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfRegions()Ljava/util/List;

    move-result-object v9

    :cond_a
    if-eqz p7, :cond_c

    .line 142
    move-object/from16 v10, p7

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_4

    :cond_b
    move-object v7, v10

    :goto_4
    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbRegions()Ljava/util/List;

    move-result-object v7

    :cond_d
    if-nez p8, :cond_e

    .line 143
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAeLock()Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5

    :cond_e
    move-object/from16 v10, p8

    :goto_5
    if-nez p9, :cond_f

    .line 144
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAfLock()Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_6

    :cond_f
    move-object/from16 v11, p9

    :goto_6
    if-nez p10, :cond_10

    .line 145
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/State3A;->getAwbLock()Ljava/lang/Boolean;

    move-result-object v12

    move-object v13, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v13

    goto :goto_7

    :cond_10
    move-object v12, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v12, p10

    .line 135
    :goto_7
    invoke-virtual/range {v2 .. v12}, Landroidx/camera/camera2/pipe/graph/State3A;->copy-7jOEVJU(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroidx/camera/camera2/pipe/graph/State3A;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method
