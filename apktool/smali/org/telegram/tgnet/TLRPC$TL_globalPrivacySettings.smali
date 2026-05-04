.class public Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;
.super Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_globalPrivacySettings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9325
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 9329
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 9330
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 9331
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->keep_archived_unmuted:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 9332
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->keep_archived_folders:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 9333
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->hide_read_marks:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 9334
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->new_noncontact_peers_require_premium:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v2, v3

    .line 9335
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->display_gifts_button:Z

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 9337
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->noncontact_peers_paid_stars:J

    .line 9339
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 9340
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1be4cb1

    .line 9345
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9346
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9347
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->keep_archived_unmuted:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9348
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->keep_archived_folders:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9349
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->hide_read_marks:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9350
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->new_noncontact_peers_require_premium:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9351
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->display_gifts_button:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x81

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    .line 9352
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 9353
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 9354
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->noncontact_peers_paid_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 9356
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 9357
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_7
    return-void
.end method
