.class public Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatAdminRights"
.end annotation


# instance fields
.field public add_admins:Z

.field public anonymous:Z

.field public ban_users:Z

.field public change_info:Z

.field public delete_messages:Z

.field public delete_stories:Z

.field public edit_messages:Z

.field public edit_stories:Z

.field public flags:I

.field public invite_users:Z

.field public manage_call:Z

.field public manage_direct_messages:Z

.field public manage_ranks:Z

.field public manage_topics:Z

.field public other:Z

.field public pin_messages:Z

.field public post_messages:Z

.field public post_stories:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4116
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 2

    const v0, 0x5fb224d5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4139
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 4140
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    return-object p0
.end method

.method public static clone(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4145
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 4146
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4147
    new-instance p0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v0, 0x0

    .line 4148
    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p0, v1, v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 4153
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4154
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 4158
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 4159
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 4160
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 4161
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 4162
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    .line 4163
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    .line 4164
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    .line 4165
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    .line 4166
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    and-int/lit16 p2, p1, 0x400

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_8

    :cond_8
    move p2, v0

    .line 4167
    :goto_8
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    and-int/lit16 p2, p1, 0x800

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_9

    :cond_9
    move p2, v0

    .line 4168
    :goto_9
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_a

    move p2, v1

    goto :goto_a

    :cond_a
    move p2, v0

    .line 4169
    :goto_a
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    and-int/lit16 p2, p1, 0x2000

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_b

    :cond_b
    move p2, v0

    .line 4170
    :goto_b
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_c

    :cond_c
    move p2, v0

    .line 4171
    :goto_c
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_d

    :cond_d
    move p2, v0

    .line 4172
    :goto_d
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-eqz p2, :cond_e

    move v0, v1

    .line 4173
    :cond_e
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    const/high16 p2, 0x20000

    .line 4174
    invoke-static {p1, p2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    .line 4175
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    const/high16 p2, 0x40000

    invoke-static {p1, p2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x5fb224d5

    .line 4179
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4180
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4181
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4182
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4183
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4184
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4185
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4186
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4187
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x201

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4188
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4189
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4190
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x1000

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x1001

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4191
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x2000

    goto :goto_b

    :cond_b
    and-int/lit16 v0, v0, -0x2001

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4192
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x4000

    goto :goto_c

    :cond_c
    and-int/lit16 v0, v0, -0x4001

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4193
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_d

    :cond_d
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4194
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_e

    :cond_e
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    const/high16 v1, 0x20000

    .line 4195
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    const/high16 v1, 0x40000

    .line 4196
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->flags:I

    .line 4197
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
