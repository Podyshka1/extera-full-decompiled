.class public Lorg/telegram/messenger/MessagesController$PeerColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColor"
.end annotation


# instance fields
.field public channelLvl:I

.field private final colors:[I

.field private final darkColors:[I

.field public groupLvl:I

.field public hidden:Z

.field public id:I

.field public isDefaultName:Z

.field public patternColor:I

.field public textColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcolors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdarkColors(Lorg/telegram/messenger/MessagesController$PeerColor;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 5284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5285
    iput v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->patternColor:I

    .line 5286
    iput v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->textColor:I

    const/4 v0, 0x6

    .line 5292
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    .line 5293
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    return-void
.end method

.method public static fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 8

    .line 5430
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5431
    :cond_0
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    .line 5432
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    const/4 v1, -0x1

    .line 5433
    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v1, 0x1

    .line 5434
    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    .line 5435
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    iget v3, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->edge_color:I

    const/high16 v4, -0x1000000

    or-int v5, v3, v4

    const/4 v6, 0x0

    aput v5, v2, v6

    .line 5436
    iget v5, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->center_color:I

    or-int v7, v5, v4

    aput v7, v2, v1

    const/4 v1, 0x2

    or-int/2addr v3, v4

    .line 5437
    aput v3, v2, v1

    const/4 v1, 0x3

    or-int v3, v5, v4

    .line 5438
    aput v3, v2, v1

    .line 5439
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->text_color:I

    or-int v3, v1, v4

    const/4 v5, 0x4

    aput v3, v2, v5

    const/4 v3, 0x5

    or-int/2addr v1, v4

    .line 5440
    aput v1, v2, v3

    .line 5441
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    const/4 v3, 0x6

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5442
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_color:I

    or-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->patternColor:I

    .line 5443
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->text_color:I

    or-int/2addr p0, v4

    iput p0, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->textColor:I

    return-object v0
.end method

.method public static fromPeerCollectible(Lorg/telegram/tgnet/TLRPC$PeerColor;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 1

    .line 5420
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5422
    :cond_0
    new-instance p0, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    const/4 v0, -0x1

    .line 5423
    iput v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    const/4 v0, 0x1

    .line 5424
    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 5501
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    goto/16 :goto_a

    .line 5504
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x48

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v4, 0x2

    if-eqz v2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 5510
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ","

    if-le v6, v5, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x5b

    if-ne v6, v8, :cond_4

    const/16 v6, 0x5d

    .line 5511
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-le v6, v5, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 5513
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 5514
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5515
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5516
    aget-object v8, v5, v1

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5517
    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 5519
    :cond_3
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v5, v1

    :goto_2
    add-int/2addr v6, v3

    move v11, v6

    move v6, v5

    move v5, v11

    goto :goto_3

    :cond_4
    move v6, v1

    move v8, v6

    :goto_3
    const/16 v9, 0x7b

    .line 5524
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_5

    return-object v0

    .line 5527
    :cond_5
    :try_start_0
    new-instance v10, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v10}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    .line 5528
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 5529
    iput-boolean v2, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    .line 5530
    iput v8, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    .line 5531
    iput v6, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    add-int/2addr v9, v3

    .line 5532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5533
    aget-object v2, p0, v1

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v5, v1

    :goto_4
    const/4 v6, 0x6

    if-ge v5, v6, :cond_7

    .line 5535
    iget-object v6, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    array-length v8, v2

    add-int/lit8 v9, v5, 0x1

    if-lt v8, v9, :cond_6

    aget-object v8, v2, v5

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_9

    :cond_6
    aget v8, v6, v1

    :goto_5
    aput v8, v6, v5

    move v5, v9

    goto :goto_4

    .line 5536
    :cond_7
    array-length v2, p0

    if-lt v2, v4, :cond_9

    .line 5537
    aget-object p0, p0, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v2, v1

    :goto_6
    if-ge v2, v6, :cond_a

    .line 5539
    iget-object v3, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    array-length v4, p0

    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_8

    aget-object v4, p0, v2

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_7

    :cond_8
    aget v4, v3, v1

    :goto_7
    aput v4, v3, v2

    move v2, v5

    goto :goto_6

    :cond_9
    :goto_8
    if-ge v1, v6, :cond_a

    .line 5542
    iget-object p0, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    iget-object v2, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v2, v2, v1

    aput v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    return-object v10

    .line 5546
    :goto_9
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    return-object v0
.end method

.method public static fromTL(Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;)Lorg/telegram/messenger/MessagesController$PeerColor;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5450
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$PeerColor;-><init>()V

    .line 5451
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->color_id:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    .line 5452
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->hidden:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    .line 5453
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->flags:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1

    .line 5454
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->channel_min_level:I

    iput v2, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    :cond_1
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 5457
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->group_min_level:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    .line 5460
    :cond_2
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5461
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorOption;->dark_colors:Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I

    move-result-object p0

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    invoke-static {p0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static optionToColors(Lorg/telegram/tgnet/TLRPC$help_PeerColorSet;)[I
    .locals 9

    const/4 v0, 0x6

    .line 5467
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v4, 0x3

    aput v2, v1, v4

    const/4 v4, 0x4

    aput v2, v1, v4

    const/4 v4, 0x5

    aput v2, v1, v4

    .line 5469
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;

    if-eqz v4, :cond_0

    .line 5470
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorSet;->colors:Ljava/util/ArrayList;

    goto :goto_3

    .line 5471
    :cond_0
    instance-of v4, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;

    if-eqz v4, :cond_4

    .line 5472
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->palette_colors:Ljava/util/ArrayList;

    .line 5473
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->bg_colors:Ljava/util/ArrayList;

    .line 5474
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_peerColorProfileSet;->story_colors:Ljava/util/ArrayList;

    .line 5475
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_1

    move v7, v2

    .line 5477
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 5478
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    move v4, v2

    .line 5481
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 5482
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    move v4, v2

    .line 5485
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 5486
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v6

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_6

    .line 5490
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, -0x1000000

    if-lez v3, :cond_5

    .line 5491
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 5493
    :cond_5
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 5494
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object v1
.end method


# virtual methods
.method public appendString(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 5372
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->hidden:Z

    if-eqz v0, :cond_0

    const-string v0, "H"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5374
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    const-string v1, ","

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    if-eqz v0, :cond_2

    .line 5375
    :cond_1
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5377
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5378
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5380
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v0, v0, v2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v4, v0, :cond_5

    .line 5381
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5382
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5383
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v4, v0, v8

    aget v9, v0, v2

    if-ne v4, v9, :cond_3

    aget v0, v0, v7

    if-eq v0, v9, :cond_5

    .line 5384
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5385
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5386
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5387
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5388
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v4, v0, v6

    aget v9, v0, v2

    if-ne v4, v9, :cond_4

    aget v0, v0, v5

    if-eq v0, v9, :cond_5

    .line 5389
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5390
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5391
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5392
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5396
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v4, v0, v2

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    aget v10, v9, v2

    if-ne v4, v10, :cond_6

    aget v4, v0, v3

    aget v10, v9, v3

    if-ne v4, v10, :cond_6

    aget v0, v0, v8

    aget v4, v9, v8

    if-eq v0, v4, :cond_9

    .line 5397
    :cond_6
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5398
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5399
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v4, v0, v3

    aget v0, v0, v2

    if-eq v4, v0, :cond_9

    .line 5400
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5401
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5402
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v3, v0, v8

    aget v4, v0, v2

    if-ne v3, v4, :cond_7

    aget v0, v0, v7

    if-eq v0, v4, :cond_9

    .line 5403
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5404
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5405
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5406
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5407
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v3, v0, v6

    aget v2, v0, v2

    if-ne v3, v2, :cond_8

    aget v0, v0, v5

    if-eq v0, v2, :cond_9

    .line 5408
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5409
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5410
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5411
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    aget v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5416
    :cond_9
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getAvatarColor1()I
    .locals 3

    const/4 v0, 0x0

    .line 5366
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor2(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getStoryColor2(Z)I

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getAvatarColor2()I
    .locals 3

    const/4 v0, 0x0

    .line 5369
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor1(Z)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getStoryColor1(Z)I

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public getBgColor1(Z)I
    .locals 1

    .line 5354
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result p1

    return p1
.end method

.method public getBgColor2(Z)I
    .locals 1

    .line 5357
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor4(Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result p1

    return p1
.end method

.method public getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I
    .locals 2

    if-ltz p1, :cond_4

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 5296
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->isDefaultName:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    if-ltz v0, :cond_1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 5297
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1

    :cond_1
    if-eqz p2, :cond_2

    .line 5299
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_3

    .line 5300
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_1
    aget p1, p2, p1

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public getColor1()I
    .locals 2

    .line 5324
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getColor1(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5306
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public getColor2()I
    .locals 2

    .line 5327
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getColor2(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5309
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x1

    aget p1, p1, v0

    return p1
.end method

.method public getColor3()I
    .locals 2

    .line 5330
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getColor3(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5312
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method public getColor4()I
    .locals 2

    .line 5333
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getColor4(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5315
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x3

    aget p1, p1, v0

    return p1
.end method

.method public getColor5()I
    .locals 2

    .line 5336
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getColor5(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5318
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x4

    aget p1, p1, v0

    return p1
.end method

.method public getColor6(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 5321
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->darkColors:[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->colors:[I

    :goto_0
    const/4 v0, 0x5

    aget p1, p1, v0

    return p1
.end method

.method public getLvl(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 5303
    iget p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->groupLvl:I

    return p1

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MessagesController$PeerColor;->channelLvl:I

    return p1
.end method

.method public getStoryColor1(Z)I
    .locals 1

    .line 5360
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor5(Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result p1

    return p1
.end method

.method public getStoryColor2(Z)I
    .locals 1

    .line 5363
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor6(Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor4(Z)I

    move-result p1

    return p1
.end method

.method public hasColor2()Z
    .locals 2

    .line 5339
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasColor2(Z)Z
    .locals 1

    .line 5345
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasColor3()Z
    .locals 2

    .line 5342
    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasColor3(Z)Z
    .locals 1

    .line 5348
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasColor6(Z)Z
    .locals 1

    .line 5351
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor6(Z)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1(Z)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
