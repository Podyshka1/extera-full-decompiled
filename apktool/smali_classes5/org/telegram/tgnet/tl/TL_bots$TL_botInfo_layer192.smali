.class public Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo_layer192;
.super Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_bots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_botInfo_layer192"
.end annotation


# static fields
.field public static final constructor:I = -0x7dbc818c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_bots$TL_botInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 533
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

    .line 534
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->has_preview_medias:Z

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 536
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    .line 538
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 539
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    .line 541
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 542
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 544
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 545
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 547
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 548
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    .line 550
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 551
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    .line 553
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 554
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x7dbc818c

    .line 559
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 560
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

    .line 561
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 562
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 563
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 565
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 568
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 571
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 574
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 577
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 578
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->menu_button:Lorg/telegram/tgnet/tl/TL_bots$BotMenuButton;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 580
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 581
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->privacy_policy_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
