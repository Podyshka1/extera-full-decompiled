.class public Lorg/telegram/tgnet/TLRPC$TL_groupCall;
.super Lorg/telegram/tgnet/TLRPC$GroupCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_groupCall"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2251
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GroupCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2255
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2256
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2257
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2258
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2259
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 2260
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 2261
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_video_active:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 2262
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 2263
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->listeners_hidden:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 2264
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->conference:Z

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move v2, v3

    .line 2265
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    const/high16 v1, 0x20000

    .line 2266
    invoke-static {v0, v1}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->messages_enabled:Z

    .line 2267
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_messages_enabled:Z

    .line 2268
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->min:Z

    .line 2269
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    .line 2270
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    .line 2271
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 2272
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 2273
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    .line 2275
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 2276
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    .line 2278
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    .line 2279
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    .line 2281
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    .line 2282
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    .line 2284
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 2285
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    .line 2287
    :cond_e
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    .line 2288
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 2289
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2290
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    .line 2292
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2293
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->send_paid_messages_stars:J

    .line 2295
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2296
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_11
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x104d49e9

    .line 2301
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2302
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2303
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2304
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2305
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x101

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2306
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x201

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2307
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_video_active:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x801

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2308
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x1001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2309
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->listeners_hidden:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2310
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->conference:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x4000

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x4001

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2311
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    if-eqz v1, :cond_9

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x20000

    .line 2312
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->messages_enabled:Z

    invoke-static {v0, v1, v2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x40000

    .line 2313
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_messages_enabled:Z

    invoke-static {v0, v1, v2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x80000

    .line 2314
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->min:Z

    invoke-static {v0, v1, v2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2315
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2316
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2317
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2318
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2319
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 2320
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2322
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 2323
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2325
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c

    .line 2326
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2328
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    .line 2329
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2331
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_e

    .line 2332
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2334
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2336
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 2337
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2339
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2340
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2342
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2343
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_11
    return-void
.end method
