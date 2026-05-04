.class public Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;
.super Lorg/telegram/tgnet/TLRPC$UrlAuthResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_urlAuthResultRequest"
.end annotation


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$User;

.field public browser:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public flags:I

.field public ip:Ljava/lang/String;

.field public match_codes:Ljava/util/ArrayList;

.field public match_codes_first:Z

.field public platform:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public request_phone_number:Z

.field public request_write_access:Z

.field public user_id_hint:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1310
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$UrlAuthResult;-><init>()V

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 1327
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x1

    .line 1328
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_write_access:Z

    .line 1329
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_phone_number:Z

    .line 1330
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes_first:Z

    .line 1331
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    .line 1332
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    .line 1333
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    .line 1335
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    .line 1336
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    .line 1337
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    .line 1339
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1340
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    .line 1342
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1343
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->user_id_hint:J

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x70714e2

    .line 1348
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1349
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_write_access:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x2

    .line 1350
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_phone_number:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x20

    .line 1351
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes_first:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    .line 1352
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 1354
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1355
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1361
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 1364
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->flags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->user_id_hint:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_2
    return-void
.end method
