.class public final Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;
.super Landroidx/camera/camera2/pipe/OutputStream$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/OutputStream$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyOutputConfig"
.end annotation


# instance fields
.field private final outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;


# direct methods
.method private constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V
    .locals 13

    move-object/from16 v0, p4

    const-string/jumbo v1, "size"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outputType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "sensorPixelModes"

    move-object/from16 v11, p10

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 300
    invoke-direct/range {v2 .. v12}, Landroidx/camera/camera2/pipe/OutputStream$Config;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    iput-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;-><init>(Landroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getOutputType$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
    .locals 1

    .line 304
    iget-object v0, p0, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-object v0
.end method
