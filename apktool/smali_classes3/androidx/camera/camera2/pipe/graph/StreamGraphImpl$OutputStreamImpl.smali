.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamImpl"
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field private final format:I

.field private final id:I

.field private final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field private final outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

.field private final size:Landroid/util/Size;

.field public stream:Landroidx/camera/camera2/pipe/CameraStream;

.field private final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field private final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;


# direct methods
.method private constructor <init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;)V
    .locals 0

    const-string/jumbo p6, "size"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "camera"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 256
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->size:Landroid/util/Size;

    .line 257
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    .line 258
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->camera:Ljava/lang/String;

    .line 259
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 261
    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 262
    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 263
    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    .line 264
    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;-><init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;)V

    return-void
.end method


# virtual methods
.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    return-object v0
.end method

.method public getFormat-8FPWQzE()I
    .locals 1

    .line 257
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    return v0
.end method

.method public getId-4LaLFng()I
    .locals 1

    .line 255
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    return v0
.end method

.method public getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
    .locals 1

    .line 259
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    return-object v0
.end method

.method public getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getStream()Landroidx/camera/camera2/pipe/CameraStream;
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "stream"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    return-object v0
.end method

.method public getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-object v0
.end method

.method public getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic isValidForHighSpeedOperatingMode()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputStream$-CC;->$default$isValidForHighSpeedOperatingMode(Landroidx/camera/camera2/pipe/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public setStream(Landroidx/camera/camera2/pipe/CameraStream;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->getId-4LaLFng()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputId;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
