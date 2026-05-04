.class public Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_premiumSubscriptionOption"
.end annotation


# instance fields
.field public amount:J

.field public bot_url:Ljava/lang/String;

.field public can_purchase_upgrade:Z

.field public currency:Ljava/lang/String;

.field public current:Z

.field public flags:I

.field public months:I

.field public store_product:Ljava/lang/String;

.field public transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1076
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;
    .locals 2

    const v0, -0x490ee142

    if-eq p1, v0, :cond_1

    const v0, 0x5f2d1df2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1093
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;-><init>()V

    goto :goto_0

    .line 1096
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption_layer151;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption_layer151;-><init>()V

    .line 1099
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1103
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1104
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 1106
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    .line 1108
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->can_purchase_upgrade:Z

    .line 1109
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    .line 1110
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->currency:Ljava/lang/String;

    .line 1111
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->amount:J

    .line 1112
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    .line 1113
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 1114
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x5f2d1df2

    .line 1119
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1120
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->current:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    .line 1121
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->can_purchase_upgrade:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    .line 1122
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1123
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1124
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->transaction:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1126
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->months:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1127
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1128
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1129
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->bot_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1130
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1131
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumSubscriptionOption;->store_product:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
