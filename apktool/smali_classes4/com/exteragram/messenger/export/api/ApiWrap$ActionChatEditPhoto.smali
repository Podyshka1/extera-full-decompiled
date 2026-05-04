.class public final Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;
.super Lcom/android/tools/r8/RecordTag;
.source "SourceFile"


# instance fields
.field private final photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;

    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    iget-object p1, p1, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

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
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static bridge synthetic -$$Nest$fgetphoto(Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;)Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    return-object p0
.end method

.method public constructor <init>(Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    invoke-static {v0}, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public photo()Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->photo:Lcom/exteragram/messenger/export/output/html/HtmlWriter$Photo;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 401
    invoke-direct {p0}, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/exteragram/messenger/export/api/ApiWrap$ActionChatEditPhoto;

    const-string v2, "photo"

    invoke-static {v0, v1, v2}, Lcom/exteragram/messenger/ai/ui/GenerateFromMessageBottomSheet$GenerationData$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
