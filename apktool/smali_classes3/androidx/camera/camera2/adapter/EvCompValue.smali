.class public final Landroidx/camera/camera2/adapter/EvCompValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final index:I

.field private final range:Landroid/util/Range;

.field private final step:Landroid/util/Rational;

.field private final supported:Z


# direct methods
.method public constructor <init>(ZILandroid/util/Range;Landroid/util/Rational;)V
    .locals 1

    const-string v0, "range"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "step"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    .line 28
    iput p2, p0, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    .line 29
    iput-object p3, p0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    .line 30
    iput-object p4, p0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/adapter/EvCompValue;ZILandroid/util/Range;Landroid/util/Rational;ILjava/lang/Object;)Landroidx/camera/camera2/adapter/EvCompValue;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/EvCompValue;->copy(ZILandroid/util/Range;Landroid/util/Rational;)Landroidx/camera/camera2/adapter/EvCompValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZILandroid/util/Range;Landroid/util/Rational;)Landroidx/camera/camera2/adapter/EvCompValue;
    .locals 1

    const-string v0, "range"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "step"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/camera/camera2/adapter/EvCompValue;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/camera/camera2/adapter/EvCompValue;-><init>(ZILandroid/util/Range;Landroid/util/Rational;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/adapter/EvCompValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/adapter/EvCompValue;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    iget-boolean v3, p1, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    iget v3, p1, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    iget-object v3, p1, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    iget-object p1, p1, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    invoke-static {v0}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EvCompValue(supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->supported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->range:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/EvCompValue;->step:Landroid/util/Rational;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateIndex$camera_camera2(I)Landroidx/camera/camera2/adapter/EvCompValue;
    .locals 7

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    .line 41
    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/adapter/EvCompValue;->copy$default(Landroidx/camera/camera2/adapter/EvCompValue;ZILandroid/util/Range;Landroid/util/Rational;ILjava/lang/Object;)Landroidx/camera/camera2/adapter/EvCompValue;

    move-result-object p1

    return-object p1
.end method
