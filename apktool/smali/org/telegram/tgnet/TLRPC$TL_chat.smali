.class public Lorg/telegram/tgnet/TLRPC$TL_chat;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43040
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 43044
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$TL_chat;->readParams(Lorg/telegram/tgnet/InputSerializedData;ZZ)V

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;ZZ)V
    .locals 4

    .line 43048
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 43049
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 43050
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 43051
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 43052
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 43053
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 43054
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    move v2, v3

    .line 43055
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    .line 43056
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 43057
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 43058
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 43059
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    iput p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    .line 43060
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    iput p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    .line 43061
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    iput p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    .line 43062
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_7

    .line 43063
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 43065
    :cond_7
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 p3, p3, 0x4000

    if-eqz p3, :cond_8

    .line 43066
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 43068
    :cond_8
    iget p3, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v0, 0x40000

    and-int/2addr p3, v0

    if-eqz p3, :cond_9

    .line 43069
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p3

    invoke-static {p1, p3, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    :cond_9
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x41cbf256

    .line 43074
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43075
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43076
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43077
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43078
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43079
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_active:Z

    if-eqz v1, :cond_4

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    goto :goto_4

    :cond_4
    const v1, -0x800001

    and-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43080
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->call_not_empty:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x1000001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43081
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_6

    :cond_6
    const v1, -0x2000001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43082
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43083
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43084
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 43085
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43086
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43087
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43088
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43089
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 43090
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43092
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    .line 43093
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 43095
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 43096
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_9
    return-void
.end method
