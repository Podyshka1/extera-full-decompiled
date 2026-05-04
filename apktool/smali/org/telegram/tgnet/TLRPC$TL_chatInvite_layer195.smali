.class public Lorg/telegram/tgnet/TLRPC$TL_chatInvite_layer195;
.super Lorg/telegram/tgnet/TLRPC$TL_chatInvite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatInvite_layer195"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5226
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 5230
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

    .line 5231
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 5232
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->broadcast:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 5233
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->isPublic:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 5234
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 5235
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 5236
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 5237
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 5238
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    move v2, v3

    .line 5239
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->can_refulfill_subscription:Z

    .line 5240
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    .line 5241
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    .line 5243
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    .line 5245
    :cond_9
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 5246
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    .line 5247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 5248
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    .line 5250
    :cond_a
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    .line 5251
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    .line 5252
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    .line 5254
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 5255
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_form_id:J

    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x19ac763

    .line 5260
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5261
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

    .line 5262
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->broadcast:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5263
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->isPublic:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5264
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5265
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5266
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x40

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x41

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5267
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5268
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x101

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5269
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x200

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x201

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5270
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->can_refulfill_subscription:Z

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_9
    and-int/lit16 v0, v0, -0x801

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    .line 5271
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5272
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5273
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 5274
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 5276
    :cond_a
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5277
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5278
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 5279
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 5281
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5282
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 5283
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5285
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 5286
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->subscription_form_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_d
    return-void
.end method
