.class public Lorg/telegram/tgnet/TLRPC$TL_chatInvite;
.super Lorg/telegram/tgnet/TLRPC$ChatInvite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInvite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5155
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatInvite;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 5159
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5160
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5161
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->broadcast:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 5162
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->isPublic:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 5163
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 5164
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 5165
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 5166
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 5167
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    move v2, v3

    .line 5168
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->can_refulfill_subscription:Z

    .line 5169
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    .line 5170
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 5172
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    .line 5174
    :cond_9
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5175
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 5176
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 5177
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    .line 5179
    :cond_a
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    .line 5180
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 5181
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    .line 5183
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 5184
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_form_id:J

    .line 5186
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 5187
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    :cond_d
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x5c9d3702

    .line 5192
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5193
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5194
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->broadcast:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5195
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->isPublic:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5196
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5197
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5198
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x41

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5199
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5200
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x101

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5201
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x201

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5202
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->can_refulfill_subscription:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5203
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5204
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5205
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 5206
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5208
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5209
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 5211
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5213
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5214
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 5215
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5217
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 5218
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_form_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5220
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    .line 5221
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerification;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_e
    return-void
.end method
