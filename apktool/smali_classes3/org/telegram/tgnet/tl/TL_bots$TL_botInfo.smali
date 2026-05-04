.class public Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo;
.super Lorg/telegram/tgnet/tl/TL_bots$BotInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInfo"
.end annotation


# static fields
.field public static final constructor:I = 0x4d8a0299


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 396
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 400
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 401
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->has_preview_medias:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 403
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    .line 405
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 406
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    .line 408
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 409
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 411
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 412
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 414
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 415
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    .line 417
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 418
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    .line 420
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 421
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    .line 423
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 424
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    .line 426
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 427
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    :cond_9
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4d8a0299    # 2.8942826E8f

    .line 432
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 433
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->has_preview_medias:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, -0x41

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    .line 434
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 435
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 436
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 438
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 441
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 442
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 444
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 445
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 447
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 448
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 450
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 451
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 453
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 454
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 456
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 459
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_9
    return-void
.end method
