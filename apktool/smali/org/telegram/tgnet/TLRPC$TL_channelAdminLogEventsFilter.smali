.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEventsFilter"
.end annotation


# instance fields
.field public ban:Z

.field public delete:Z

.field public demote:Z

.field public edit:Z

.field public edit_rank:Z

.field public flags:I

.field public forums:Z

.field public group_call:Z

.field public info:Z

.field public invite:Z

.field public invites:Z

.field public join:Z

.field public kick:Z

.field public leave:Z

.field public pinned:Z

.field public promote:Z

.field public send:Z

.field public settings:Z

.field public sub_extend:Z

.field public unban:Z

.field public unkick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31686
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 31717
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 31718
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 31719
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    .line 31720
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p2, v0

    .line 31721
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_4

    :cond_4
    move p2, v0

    .line 31722
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_5

    :cond_5
    move p2, v0

    .line 31723
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    and-int/lit8 p2, p1, 0x40

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_6

    :cond_6
    move p2, v0

    .line 31724
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_7

    :cond_7
    move p2, v0

    .line 31725
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    and-int/lit16 p2, p1, 0x100

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_8

    :cond_8
    move p2, v0

    .line 31726
    :goto_8
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_9

    :cond_9
    move p2, v0

    .line 31727
    :goto_9
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    and-int/lit16 p2, p1, 0x400

    if-eqz p2, :cond_a

    move p2, v1

    goto :goto_a

    :cond_a
    move p2, v0

    .line 31728
    :goto_a
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    and-int/lit16 p2, p1, 0x800

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_b

    :cond_b
    move p2, v0

    .line 31729
    :goto_b
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_c

    :cond_c
    move p2, v0

    .line 31730
    :goto_c
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    and-int/lit16 p2, p1, 0x2000

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_d

    :cond_d
    move p2, v0

    .line 31731
    :goto_d
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_e

    move p2, v1

    goto :goto_e

    :cond_e
    move p2, v0

    .line 31732
    :goto_e
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_f

    move p2, v1

    goto :goto_f

    :cond_f
    move p2, v0

    .line 31733
    :goto_f
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-eqz p2, :cond_10

    move p2, v1

    goto :goto_10

    :cond_10
    move p2, v0

    .line 31734
    :goto_10
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->send:Z

    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-eqz p2, :cond_11

    move p2, v1

    goto :goto_11

    :cond_11
    move p2, v0

    .line 31735
    :goto_11
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->forums:Z

    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-eqz p2, :cond_12

    move v0, v1

    .line 31736
    :cond_12
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->sub_extend:Z

    const/high16 p2, 0x80000

    .line 31737
    invoke-static {p1, p2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x15ef851c

    .line 31741
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31742
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31743
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31744
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31745
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31746
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31747
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31748
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    goto :goto_6

    :cond_6
    and-int/lit8 v0, v0, -0x41

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31749
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x81

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31750
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x100

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x101

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31751
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x200

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x201

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31752
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x400

    goto :goto_a

    :cond_a
    and-int/lit16 v0, v0, -0x401

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31753
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x800

    goto :goto_b

    :cond_b
    and-int/lit16 v0, v0, -0x801

    :goto_b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31754
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x1000

    goto :goto_c

    :cond_c
    and-int/lit16 v0, v0, -0x1001

    :goto_c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31755
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x2000

    goto :goto_d

    :cond_d
    and-int/lit16 v0, v0, -0x2001

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31756
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x4000

    goto :goto_e

    :cond_e
    and-int/lit16 v0, v0, -0x4001

    :goto_e
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31757
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    if-eqz v1, :cond_f

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_f

    :cond_f
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_f
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31758
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->send:Z

    if-eqz v1, :cond_10

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_10

    :cond_10
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_10
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31759
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->forums:Z

    if-eqz v1, :cond_11

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    goto :goto_11

    :cond_11
    const v1, -0x20001

    and-int/2addr v0, v1

    :goto_11
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31760
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->sub_extend:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    goto :goto_12

    :cond_12
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_12
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    const/high16 v1, 0x80000

    .line 31761
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->flags:I

    .line 31762
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
