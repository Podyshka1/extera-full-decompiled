.class public final Landroidx/camera/core/FocusMeteringAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/FocusMeteringAction$Builder;
    }
.end annotation


# instance fields
.field private final mAutoCancelDurationInMillis:J

.field private final mMeteringPointsAe:Ljava/util/List;

.field private final mMeteringPointsAf:Ljava/util/List;

.field private final mMeteringPointsAwb:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/camera/core/FocusMeteringAction$Builder;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAf:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAf:Ljava/util/List;

    .line 110
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAe:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAe:Ljava/util/List;

    .line 111
    iget-object v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->mMeteringPointsAwb:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAwb:Ljava/util/List;

    .line 112
    iget-wide v0, p1, Landroidx/camera/core/FocusMeteringAction$Builder;->mAutoCancelDurationInMillis:J

    iput-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->mAutoCancelDurationInMillis:J

    return-void
.end method


# virtual methods
.method public getAutoCancelDurationInMillis()J
    .locals 2

    .line 119
    iget-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->mAutoCancelDurationInMillis:J

    return-wide v0
.end method

.method public getMeteringPointsAe()Ljava/util/List;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAe:Ljava/util/List;

    return-object v0
.end method

.method public getMeteringPointsAf()Ljava/util/List;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAf:Ljava/util/List;

    return-object v0
.end method

.method public getMeteringPointsAwb()Ljava/util/List;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/camera/core/FocusMeteringAction;->mMeteringPointsAwb:Ljava/util/List;

    return-object v0
.end method

.method public isAutoCancelEnabled()Z
    .locals 4

    .line 147
    iget-wide v0, p0, Landroidx/camera/core/FocusMeteringAction;->mAutoCancelDurationInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
