.class public final Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# instance fields
.field private final ready:J

.field private final total:J


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;

    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    iget-wide v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    iget-wide v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-wide p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    iput-wide p3, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 250
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    iget-wide v2, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    invoke-static {v0, v1, v2, v3}, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress$$ExternalSyntheticRecord0;->m(JJ)I

    move-result v0

    return v0
.end method

.method public ready()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->ready:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;

    const-string v2, "ready;total"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public total()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$FileProgress;->total:J

    return-wide v0
.end method
