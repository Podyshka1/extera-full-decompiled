.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate_layer60;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockAuthorDate_layer60"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62094
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 62098
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    .line 62099
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 62100
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 62101
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x3d5b64f2

    .line 62105
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 62106
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 62107
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->published_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
