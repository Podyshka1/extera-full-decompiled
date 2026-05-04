.class public final Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:J

.field private final name:Ljava/lang/String;

.field private final totalAmountRub:Ljava/math/BigDecimal;

.field private final totalAmountUsd:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "totalAmountRub"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "totalAmountUsd"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    .line 22
    iput-object p3, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    .line 24
    iput-object p5, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    return-void
.end method

.method public static synthetic copy$default(Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;JLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    :cond_3
    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->copy(JLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component4()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;
    .locals 7

    const-string/jumbo v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "totalAmountRub"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "totalAmountUsd"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;-><init>(JLjava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;

    iget-wide v3, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    iget-wide v5, p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalAmountRub()Ljava/math/BigDecimal;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getTotalAmountUsd()Ljava/math/BigDecimal;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoostySubscriberDTO(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmountRub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountRub:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmountUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/api/dto/BoostySubscriberDTO;->totalAmountUsd:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
