.class public Lcom/exteragram/messenger/export/api/ApiWrap$Peer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

.field public user:Lcom/exteragram/messenger/export/api/ApiWrap$User;


# direct methods
.method public constructor <init>(Lcom/exteragram/messenger/export/api/ApiWrap$Chat;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/export/api/ApiWrap$User;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    return-void
.end method


# virtual methods
.method public colorIndex()I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    if-eqz v0, :cond_0

    .line 205
    iget v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$User;->colorIndex:I

    return v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    if-eqz v0, :cond_1

    .line 207
    iget v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->colorIndex:I

    return v0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "both user and chat are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInput()Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$User;->input:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    .line 185
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    .line 186
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 187
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputUser;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    return-object v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->input:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public id()J
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$User;->info:Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;

    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$ContactInfo;->userId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    if-eqz v0, :cond_1

    .line 216
    iget-wide v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->bareId:J

    return-wide v0

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "both user and chat are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->user:Lcom/exteragram/messenger/export/api/ApiWrap$User;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/exteragram/messenger/export/api/ApiWrap$User;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ApiWrap$Peer;->chat:Lcom/exteragram/messenger/export/api/ApiWrap$Chat;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, v0, Lcom/exteragram/messenger/export/api/ApiWrap$Chat;->title:Ljava/lang/String;

    return-object v0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "both user and chat are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
