.class public Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo_layer195;
.super Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInfo_layer195"
.end annotation


# static fields
.field public static final constructor:I = 0x36607333


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 469
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

    .line 470
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->has_preview_medias:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 472
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    .line 474
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 475
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    .line 477
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 478
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 480
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 481
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 483
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 484
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    .line 486
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 487
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    .line 489
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 490
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    .line 492
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 493
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x36607333

    .line 498
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 499
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

    .line 500
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 501
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 502
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 504
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 507
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 510
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 513
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 514
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 516
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 517
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 519
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 520
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 522
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 523
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->app_settings:Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_bots$botAppSettings;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_8
    return-void
.end method
