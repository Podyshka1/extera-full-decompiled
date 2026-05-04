.class public final Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# instance fields
.field private final count:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;

    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    iget p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->count:I

    invoke-static {v0}, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo$$ExternalSyntheticRecord0;->m(I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 295
    invoke-direct {p0}, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/export/api/ApiWrap$UserpicsInfo;

    const-string v2, "count"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
