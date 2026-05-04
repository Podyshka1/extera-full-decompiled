.class public final Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# instance fields
.field private final itemIndex:I

.field private final path:Ljava/lang/String;

.field private final randomId:J

.field private final ready:J

.field private final total:J


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;

    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    iget v1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    iget-wide v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    iget-wide v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    iget-wide v2, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    .line 0
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    iget v2, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method public constructor <init>()V
    .locals 9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    .line 246
    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;-><init>(JLjava/lang/String;IJJ)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJJ)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-wide p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    iput-object p3, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    iput p4, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    iput-wide p5, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    iput-wide p7, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 8

    .line 238
    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    iget-wide v1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    iget-wide v3, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    iget-wide v5, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    iget-object v7, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress$$ExternalSyntheticRecord0;->m(IJJJLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public itemIndex()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->itemIndex:I

    return v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->path:Ljava/lang/String;

    return-object v0
.end method

.method public randomId()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->randomId:J

    return-wide v0
.end method

.method public ready()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->ready:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 238
    invoke-direct {p0}, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;

    const-string v2, "randomId;path;itemIndex;ready;total"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public total()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$DownloadProgress;->total:J

    return-wide v0
.end method
