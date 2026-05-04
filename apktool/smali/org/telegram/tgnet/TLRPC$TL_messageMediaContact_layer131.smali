.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaContact_layer131"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8222
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 8226
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 8227
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 8228
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 8229
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    .line 8230
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x340db6c0    # -3.1756928E7f

    .line 8234
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 8235
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8236
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8237
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8238
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8239
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
