.class public final Landroidx/camera/camera2/pipe/Result3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/Result3A$Status;
    }
.end annotation


# instance fields
.field private final frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

.field private final status:I


# direct methods
.method private constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    iput-object p2, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    .line 207
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/Result3A;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    iget v1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    iget v3, p1, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v1, v3}, Landroidx/camera/camera2/pipe/Result3A$Status;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFrameMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    return-object v0
.end method

.method public final getStatus-JvTi9ms()I
    .locals 1

    .line 207
    iget v0, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/Result3A$Status;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result3A(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/Result3A;->status:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/Result3A$Status;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frameMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/Result3A;->frameMetadata:Landroidx/camera/camera2/pipe/FrameMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
