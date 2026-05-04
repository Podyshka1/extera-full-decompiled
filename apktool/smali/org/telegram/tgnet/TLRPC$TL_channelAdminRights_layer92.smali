.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminRights_layer92"
.end annotation


# instance fields
.field public add_admins:Z

.field public ban_users:Z

.field public change_info:Z

.field public delete_messages:Z

.field public edit_messages:Z

.field public flags:I

.field public invite_users:Z

.field public manage_call:Z

.field public pin_messages:Z

.field public post_messages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42723
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;
    .locals 2

    const v0, 0x5d7ceba5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 42738
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;-><init>()V

    .line 42739
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 42743
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 42744
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 42745
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 42746
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 42747
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    .line 42748
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    .line 42749
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    .line 42750
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    .line 42751
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_8

    move v0, v1

    .line 42752
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->manage_call:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x5d7ceba5

    .line 42756
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 42757
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42758
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42759
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42760
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42761
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42762
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42763
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42764
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x201

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42765
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->manage_call:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42766
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
