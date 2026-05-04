.class public final Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraGraph$Session;


# instance fields
.field private final controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

.field private final debugId:I

.field private final frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

.field private final parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

.field private final token:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Token;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;)V
    .locals 1

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphProcessor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller3A"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameCaptureQueue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    .line 41
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 42
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->frameCaptureQueue:Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 43
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 44
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 46
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImplKt;->getCameraGraphSessionIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 89
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->parameters:Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->flush()V

    .line 91
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->listeners:Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->updateRequestListeners(Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->release()Z

    return-void
.end method

.method public lock3A--tS25XM(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 158
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 173
    invoke-static/range {p14 .. p15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    .line 174
    invoke-static/range {p16 .. p17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v15, p18

    .line 162
    invoke-virtual/range {v2 .. v15}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3A-Qz1gx5w(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call lock3A on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after close."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public lock3AForCapture(ZZIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 205
    iget-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p6}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p6

    if-nez p6, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/pipe/graph/Controller3A;->lock3AForCapture(ZZIJ)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call lock3AForCapture on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after close."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lkotlinx/coroutines/Deferred;
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->setTorchOff-NqN7i0k(Landroidx/camera/camera2/pipe/AeMode;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call setTorchOff on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " after close."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTorchOn()Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Controller3A;->setTorchOn()Lkotlinx/coroutines/Deferred;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call setTorchOn on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after close."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startRepeating(Landroidx/camera/camera2/pipe/Request;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call startRepeating on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " after close."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRepeating()V
    .locals 2

    .line 82
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call stopRepeating on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after close."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public submit(Ljava/util/List;)V
    .locals 1

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->submit(Ljava/util/List;)Z

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call submit with an empty list of Requests!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call submit on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " after close."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraGraph.Session-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 186
    iget-object p8, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p8}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p8

    if-nez p8, :cond_0

    move-wide p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 187
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-static {p7, p8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p7

    invoke-virtual/range {p1 .. p7}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3A(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;ILjava/lang/Long;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call unlock3A on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after close."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unlock3APostCapture(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 210
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result p2

    if-nez p2, :cond_0

    .line 211
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/graph/Controller3A;->unlock3APostCapture(Z)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call unlock3APostCapture on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after close."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
    .locals 11

    .line 106
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->token:Landroidx/camera/camera2/pipe/core/Token;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/core/Token;->getReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->controller3A:Landroidx/camera/camera2/pipe/graph/Controller3A;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v10}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot call update3A on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after close."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
