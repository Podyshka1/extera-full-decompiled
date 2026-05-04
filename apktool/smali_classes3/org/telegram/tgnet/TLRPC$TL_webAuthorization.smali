.class public Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webAuthorization"
.end annotation


# instance fields
.field public bot_id:J

.field public browser:Ljava/lang/String;

.field public date_active:I

.field public date_created:I

.field public domain:Ljava/lang/String;

.field public hash:J

.field public ip:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41296
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;
    .locals 2

    const v0, -0x59070bae

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 41310
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;-><init>()V

    .line 41311
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 41315
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    .line 41316
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    .line 41317
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    .line 41318
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->browser:Ljava/lang/String;

    .line 41319
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->platform:Ljava/lang/String;

    .line 41320
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_created:I

    .line 41321
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_active:I

    .line 41322
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->ip:Ljava/lang/String;

    .line 41323
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->region:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x59070bae

    .line 41327
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41328
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 41329
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 41330
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->browser:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41332
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41333
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_created:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_active:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41335
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->ip:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 41336
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->region:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
