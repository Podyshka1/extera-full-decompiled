.class public abstract Landroidx/camera/camera2/pipe/OutputStream$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;,
        Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;,
        Landroidx/camera/camera2/pipe/OutputStream$Config$SimpleOutputConfig;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;


# instance fields
.field private final camera:Ljava/lang/String;

.field private final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field private final format:I

.field private final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field private final sensorPixelModes:Ljava/util/List;

.field private final size:Landroid/util/Size;

.field private final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field private final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/OutputStream$Config;->Companion:Landroidx/camera/camera2/pipe/OutputStream$Config$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 0

    const-string/jumbo p5, "size"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p5, "sensorPixelModes"

    invoke-static {p9, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 184
    iput p2, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 185
    iput-object p3, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->camera:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 188
    iput-object p6, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 189
    iput-object p7, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 190
    iput-object p8, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    .line 191
    iput-object p9, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->sensorPixelModes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/camera/camera2/pipe/OutputStream$Config;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getCamera-1LO98Z0()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->camera:Ljava/lang/String;

    return-object v0
.end method

.method public final getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    return-object v0
.end method

.method public final getFormat-8FPWQzE()I
    .locals 1

    .line 184
    iget v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    return v0
.end method

.method public final getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    return-object v0
.end method

.method public final getSensorPixelModes()Ljava/util/List;
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->sensorPixelModes:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()Landroid/util/Size;
    .locals 1

    .line 183
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    return-object v0
.end method

.method public final getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    return-object v0
.end method

.method public final getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-object v0
.end method

.method public final getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->camera:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mirrorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampBase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicRangeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUseCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamUseHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sensorPixelModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/OutputStream$Config;->sensorPixelModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
