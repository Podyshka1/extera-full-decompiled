.class final Lcom/exteragram/messenger/badges/source/BadgeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field private final canChangeBadge:Z

.field private final status:Lcom/exteragram/messenger/api/model/ProfileStatus;


# direct methods
.method public constructor <init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;Z)V
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    .line 10
    iput-object p2, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    .line 11
    iput-boolean p3, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/exteragram/messenger/badges/source/BadgeInfo;Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;ZILjava/lang/Object;)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/badges/source/BadgeInfo;->copy(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;Z)Lcom/exteragram/messenger/badges/source/BadgeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;Z)Lcom/exteragram/messenger/badges/source/BadgeInfo;
    .locals 1

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/exteragram/messenger/badges/source/BadgeInfo;-><init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lcom/exteragram/messenger/api/model/ProfileStatus;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;

    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iget-object v3, p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    iget-object v3, p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    iget-boolean p1, p1, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBadge()Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    return-object v0
.end method

.method public final getCanChangeBadge()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    return v0
.end method

.method public final getStatus()Lcom/exteragram/messenger/api/model/ProfileStatus;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    invoke-static {v1}, Landroidx/camera/camera2/adapter/EvCompValue$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BadgeInfo(badge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->status:Lcom/exteragram/messenger/api/model/ProfileStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/exteragram/messenger/badges/source/BadgeInfo;->canChangeBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
