.class public abstract Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final captureSequenceDebugIds:Lkotlinx/atomicfu/AtomicLong;

.field private static final captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

.field private static final requestTags:Lkotlinx/atomicfu/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

    const-wide/16 v0, 0x0

    .line 90
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v2

    sput-object v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceDebugIds:Lkotlinx/atomicfu/AtomicLong;

    .line 91
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lkotlinx/atomicfu/AtomicLong;

    return-void
.end method

.method public static final getCaptureSequenceDebugIds()Lkotlinx/atomicfu/AtomicLong;
    .locals 1

    .line 90
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceDebugIds:Lkotlinx/atomicfu/AtomicLong;

    return-object v0
.end method

.method public static final getCaptureSequenceProcessorDebugIds()Lkotlinx/atomicfu/AtomicInt;
    .locals 1

    .line 89
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

    return-object v0
.end method

.method public static final nextRequestNumber()J
    .locals 2

    .line 93
    sget-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/RequestNumber;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
