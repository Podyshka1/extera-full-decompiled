.class public Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateUserPhoto"
.end annotation


# instance fields
.field public date:I

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public previous:Z

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34536
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 34545
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->user_id:J

    .line 34546
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->date:I

    .line 34547
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 34548
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readBool(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->previous:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xdd87974

    .line 34552
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34553
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 34554
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34555
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34556
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;->previous:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    return-void
.end method
