.class public Lorg/telegram/tgnet/TLRPC$TL_reastrictionReason;
.super Lorg/telegram/tgnet/TLRPC$RestrictionReason;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_reastrictionReason"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46043
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RestrictionReason;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 46047
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->platform:Ljava/lang/String;

    .line 46048
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    .line 46049
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2f8d534c

    .line 46053
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 46054
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->platform:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46055
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 46056
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
