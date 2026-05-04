.class public final Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;


# instance fields
.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final threads:Landroidx/camera/camera2/pipe/core/Threads;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;)V
    .locals 1

    const-string/jumbo v0, "threads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 181
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 182
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-void
.end method

.method public static final synthetic access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    .line 176
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method


# virtual methods
.method public create(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result;
    .locals 5

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaces"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureSessionState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-static {v0, v1, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt;->buildOutputConfigurations(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    move-result-object p2

    .line 190
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "CXCP"

    if-eqz v0, :cond_1

    .line 191
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create OutputConfigurations for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->access$getGraphConfig$p(Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;)Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 193
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 197
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 199
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {p1, v0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result v0

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidNSessionFactory;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/InputStream$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/InputStream$Config;->getStream()Landroidx/camera/camera2/pipe/CameraStream$Config;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 205
    new-instance v2, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    .line 206
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 207
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 208
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v0

    .line 205
    invoke-direct {v2, v3, v4, v0}, Landroidx/camera/camera2/pipe/compat/InputConfigData;-><init>(III)V

    .line 210
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getAll()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {p1, v2, v0, p3}, Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;->createReprocessableCaptureSessionByConfigurations(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    .line 215
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create capture session from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/compat/CaptureSessionState;->onSessionFinalized()V

    .line 219
    sget-object p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Failed;

    return-object p1

    .line 221
    :cond_4
    new-instance p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->getOutputSurfaceMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory$Result$Success;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
