.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription_layer193;
.super Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsSubscription_layer193"
.end annotation


# static fields
.field public static final constructor:I = 0x538ecf18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3917
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3922
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3923
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3924
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    .line 3925
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->missing_balance:Z

    .line 3926
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    .line 3927
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3928
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    .line 3929
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    .line 3930
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3931
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x538ecf18

    .line 3937
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3938
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3939
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3940
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->missing_balance:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3941
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3942
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3943
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3944
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3945
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3946
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3947
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
