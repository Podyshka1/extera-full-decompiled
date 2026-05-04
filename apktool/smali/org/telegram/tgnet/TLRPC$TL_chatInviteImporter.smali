.class public Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInviteImporter"
.end annotation


# instance fields
.field public about:Ljava/lang/String;

.field public approved_by:J

.field public date:I

.field public flags:I

.field public requested:Z

.field public user_id:J

.field public via_chatlist:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5722
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;
    .locals 2

    const v0, -0x73a52027

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5734
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;-><init>()V

    .line 5735
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 5739
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5740
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->requested:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v2, v3

    .line 5741
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->via_chatlist:Z

    .line 5742
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    .line 5743
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    .line 5744
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5745
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->about:Ljava/lang/String;

    .line 5747
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 5748
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->approved_by:J

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x73a52027

    .line 5753
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5754
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->requested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    .line 5755
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->via_chatlist:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    .line 5756
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5757
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5758
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5759
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 5760
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5762
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 5763
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteImporter;->approved_by:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_3
    return-void
.end method
