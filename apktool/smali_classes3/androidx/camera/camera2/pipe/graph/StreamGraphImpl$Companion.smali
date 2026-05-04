.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextConfigId-hoCEiqs$camera_camera2_pipe()I
    .locals 1

    .line 448
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getConfigIds$cp()Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/OutputConfigId;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public final nextGroupId$camera_camera2_pipe()I
    .locals 1

    .line 452
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getGroupIds$cp()Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public final nextInputId-m1bwn9M$camera_camera2_pipe()I
    .locals 1

    .line 444
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getInputIds$cp()Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/InputStreamId;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public final nextOutputId-4LaLFng$camera_camera2_pipe()I
    .locals 1

    .line 440
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getOutputIds$cp()Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputId;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public final nextStreamId-ptHMqGs$camera_camera2_pipe()I
    .locals 1

    .line 436
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->access$getStreamIds$cp()Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/StreamId;->constructor-impl(I)I

    move-result v0

    return v0
.end method
