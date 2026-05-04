.class public final Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final userId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;JILjava/lang/Object;)Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->copy(J)Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    return-wide v0
.end method

.method public final copy(J)Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;

    invoke-direct {v0, p1, p2}, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;

    iget-wide v3, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    iget-wide v5, p1, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getUserId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddedRegDateDTO(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/exteragram/messenger/api/dto/AddedRegDateDTO;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
