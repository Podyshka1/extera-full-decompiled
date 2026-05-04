.class public Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateNewAuthorization"
.end annotation


# instance fields
.field public date:I

.field public device:Ljava/lang/String;

.field public flags:I

.field public hash:J

.field public location:Ljava/lang/String;

.field public unconfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34043
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 34054
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34055
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->unconfirmed:Z

    .line 34056
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->hash:J

    .line 34057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 34058
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->date:I

    .line 34059
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->device:Ljava/lang/String;

    .line 34060
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->location:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x76ae5411

    .line 34066
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34067
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34068
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 34069
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34070
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34071
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->device:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 34072
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;->location:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
