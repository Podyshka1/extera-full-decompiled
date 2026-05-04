.class public Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_exportChatInvite"
.end annotation


# instance fields
.field public expire_date:I

.field public flags:I

.field public legacy_revoke_permanent:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public request_needed:Z

.field public subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

.field public title:Ljava/lang/String;

.field public usage_limit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57541
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57554
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5baa2170

    .line 57558
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57559
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 57560
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->request_needed:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 57561
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57562
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57563
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 57564
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->expire_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57566
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 57567
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->usage_limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57569
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 57570
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 57572
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 57573
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_5
    return-void
.end method
