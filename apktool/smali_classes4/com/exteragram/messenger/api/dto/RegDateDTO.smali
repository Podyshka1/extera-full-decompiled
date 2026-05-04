.class public final Lcom/exteragram/messenger/api/dto/RegDateDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accuracy:D

.field private final date:Ljava/lang/String;

.field private final flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

.field private final timestamp:J


# direct methods
.method public constructor <init>(JDLcom/exteragram/messenger/api/model/RegDateFlag;Ljava/lang/String;)V
    .locals 1

    const-string v0, "flag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    .line 18
    iput-wide p3, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    .line 19
    iput-object p5, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    .line 20
    iput-object p6, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/exteragram/messenger/api/dto/RegDateDTO;JDLcom/exteragram/messenger/api/model/RegDateFlag;Ljava/lang/String;ILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/RegDateDTO;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    :cond_3
    move-object v0, p0

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/exteragram/messenger/api/dto/RegDateDTO;->copy(JDLcom/exteragram/messenger/api/model/RegDateFlag;Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/RegDateDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    return-wide v0
.end method

.method public final component3()Lcom/exteragram/messenger/api/model/RegDateFlag;
    .locals 1

    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JDLcom/exteragram/messenger/api/model/RegDateFlag;Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/RegDateDTO;
    .locals 8

    const-string v0, "flag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/api/dto/RegDateDTO;-><init>(JDLcom/exteragram/messenger/api/model/RegDateFlag;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;

    iget-wide v3, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    iget-wide v5, p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    iget-wide v5, p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    iget-object v3, p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccuracy()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    return-wide v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag()Lcom/exteragram/messenger/api/model/RegDateFlag;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    invoke-static {v1, v2}, Lcom/exteragram/messenger/api/dto/RegDateDTO$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegDateDTO(timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->accuracy:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->flag:Lcom/exteragram/messenger/api/model/RegDateFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/RegDateDTO;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
