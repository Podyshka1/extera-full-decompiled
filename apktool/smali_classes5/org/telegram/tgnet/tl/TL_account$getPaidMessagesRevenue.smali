.class public Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getPaidMessagesRevenue"
.end annotation


# static fields
.field public static final constructor:I = 0x19ba4a67


# instance fields
.field public flags:I

.field public parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3688
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3697
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$paidMessagesRevenue;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$paidMessagesRevenue;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x19ba4a67    # 1.9262E-23f

    .line 3702
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3703
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->flags:I

    .line 3704
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3705
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3706
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->parent_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3708
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$getPaidMessagesRevenue;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
