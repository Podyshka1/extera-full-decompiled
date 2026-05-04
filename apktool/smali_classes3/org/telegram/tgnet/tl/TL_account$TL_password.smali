.class public Lorg/telegram/tgnet/tl/TL_account$TL_password;
.super Lorg/telegram/tgnet/tl/TL_account$Password;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_password"
.end annotation


# static fields
.field public static final constructor:I = -0x6a84af05


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_account$Password;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 346
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 347
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 348
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v2, v3

    .line 349
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 351
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 353
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 354
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    .line 356
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 357
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    .line 359
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 360
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    .line 362
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 363
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 365
    :cond_7
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    .line 366
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    .line 367
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    .line 368
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 369
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->pending_reset_date:I

    .line 371
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 372
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6a84af05

    .line 377
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 378
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_recovery:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 379
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 380
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    .line 381
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 382
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->current_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 385
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_B:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 388
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 389
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->srp_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 391
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->hint:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 394
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 397
    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_algo:Lorg/telegram/tgnet/TLRPC$PasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 398
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->new_secure_algo:Lorg/telegram/tgnet/TLRPC$SecurePasswordKdfAlgo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 399
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->secure_random:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 400
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 401
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->pending_reset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 403
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
