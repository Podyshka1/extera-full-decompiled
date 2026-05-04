.class public Lorg/telegram/tgnet/TLRPC$TL_phoneConnectionWebrtc;
.super Lorg/telegram/tgnet/TLRPC$PhoneConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneConnectionWebrtc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37967
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 37971
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 37972
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->turn:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 37973
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->stun:Z

    .line 37974
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    .line 37975
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ip:Ljava/lang/String;

    .line 37976
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ipv6:Ljava/lang/String;

    .line 37977
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->port:I

    .line 37978
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->username:Ljava/lang/String;

    .line 37979
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->password:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x635fe375

    .line 37983
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37984
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->turn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->flags:I

    .line 37985
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->stun:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->flags:I

    .line 37986
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37987
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 37988
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ip:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37989
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ipv6:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37990
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->port:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 37991
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->username:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 37992
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->password:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
