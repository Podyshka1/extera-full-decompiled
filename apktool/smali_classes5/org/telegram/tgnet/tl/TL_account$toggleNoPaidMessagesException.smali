.class public Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "toggleNoPaidMessagesException"
.end annotation


# static fields
.field public static final constructor:I = -0x1d1258a


# instance fields
.field public flags:I

.field public parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public refund_charged:Z

.field public require_payment:Z

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3660
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3671
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1d1258a

    .line 3676
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3677
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->refund_charged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    .line 3678
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    .line 3679
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->require_payment:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    .line 3680
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3681
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 3682
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3684
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$toggleNoPaidMessagesException;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
