.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription;
.super Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starsSubscription"
.end annotation


# static fields
.field public static final constructor:I = 0x2e6eab1a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3862
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3867
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

    .line 3868
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->canceled:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3869
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 3870
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->missing_balance:Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v2, v3

    .line 3871
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    .line 3872
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    .line 3873
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3874
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    .line 3875
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    .line 3876
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 3877
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    .line 3879
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 3880
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    .line 3882
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 3883
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3885
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 3886
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2e6eab1a

    .line 3892
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3893
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

    .line 3894
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->can_refulfill:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3895
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->missing_balance:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3896
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->bot_canceled:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    .line 3897
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3898
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3899
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3900
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3901
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3902
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 3903
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->chat_invite_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3905
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 3906
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3908
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 3909
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3911
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 3912
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;->invoice_slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
