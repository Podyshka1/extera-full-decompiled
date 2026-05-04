.class public final Landroidx/camera/camera2/pipe/CameraStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraStream$Config;
    }
.end annotation


# instance fields
.field private final id:I

.field private final outputs:Ljava/util/List;


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 1

    const-string v0, "outputs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraStream;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getId-ptHMqGs()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    return v0
.end method

.method public final getOutputs()Ljava/util/List;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraStream;->outputs:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
