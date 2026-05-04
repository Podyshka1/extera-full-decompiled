.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;,
        Lorg/telegram/messenger/Emoji$EmojiSpanRange;,
        Lorg/telegram/messenger/Emoji$EmojiSpan;
    }
.end annotation


# static fields
.field private static final DEFAULT_RECENT:[Ljava/lang/String;

.field private static final MAX_RECENT_EMOJI_COUNT:I = 0x30

.field public static bigImgSize:I

.field public static drawImgSize:I

.field private static emojiAlphaMasks:Landroid/util/SparseIntArray;

.field private static final emojiBmp:[[Landroid/graphics/Bitmap;

.field public static final emojiColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final emojiCounts:[I

.field public static emojiDrawingUseAlpha:Z

.field public static emojiDrawingYOffset:F

.field public static final emojiUseHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static inited:Z

.field public static final invalidateUiRunnable:Ljava/lang/Runnable;

.field private static final loadingEmoji:[[Z

.field public static placeholderPaint:Landroid/graphics/Paint;

.field public static final recentEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static recentEmojiLoaded:Z

.field private static final rects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GJCd0wAjo_k4MPoC4ervNAm2qe0(BS)V
    .locals 16

    move/from16 v1, p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emoji/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "%d_%d.png"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 121
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiAlphaMasks:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lorg/telegram/messenger/Emoji;->loadEmojiAlphaMasks()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/Emoji;->emojiAlphaMasks:Landroid/util/SparseIntArray;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 126
    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiAlphaMasks:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    mul-int/lit16 v5, v1, 0x1000

    add-int v5, v5, p1

    .line 127
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v7, :cond_3

    if-eq v0, v4, :cond_3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emoji/masks/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%d.png"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 134
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    mul-int v2, v11, v15

    .line 136
    new-array v8, v2, [I

    .line 137
    new-array v3, v2, [I

    move v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move v13, v10

    move v14, v15

    .line 139
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v4, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v14, v11

    move-object v8, v0

    move-object v9, v3

    .line 140
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v10, v11

    .line 141
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move v0, v6

    :goto_2
    if-ge v0, v2, :cond_2

    .line 144
    aget v3, v4, v0

    const v5, 0xffffff

    and-int/2addr v3, v5

    .line 145
    aget v5, v9, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    .line 147
    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v14, v11

    move-object v9, v4

    .line 152
    :try_start_1
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v8

    .line 156
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 159
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    aput-object v7, v0, p1

    .line 160
    sget-object v0, Lorg/telegram/messenger/Emoji;->invalidateUiRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 161
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 163
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    aget-object v0, v0, v1

    aput-boolean v6, v0, p1

    return-void
.end method

.method public static synthetic $r8$lambda$N2UxhO_RpBZMr-AKOXY3qveXL-I(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 747
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$tEFea3Q0DiBPnoNT-35a881s2dE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 946
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 947
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 954
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le p1, v2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 956
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static synthetic $r8$lambda$yALq4hWv31dvrmzOOVfuL8C4HaQ()V
    .locals 3

    .line 73
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetemojiBmp()[[Landroid/graphics/Bitmap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smloadEmoji(BS)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(BS)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 37

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lorg/telegram/messenger/Emoji;->inited:Z

    .line 56
    sget-object v1, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v2, v1, v0

    array-length v3, v2

    const/4 v2, 0x1

    aget-object v4, v1, v2

    array-length v4, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    array-length v5, v5

    const/4 v6, 0x3

    aget-object v6, v1, v6

    array-length v6, v6

    const/4 v7, 0x4

    aget-object v7, v1, v7

    array-length v7, v7

    const/4 v8, 0x5

    aget-object v8, v1, v8

    array-length v8, v8

    const/4 v9, 0x6

    aget-object v9, v1, v9

    array-length v9, v9

    const/4 v10, 0x7

    aget-object v1, v1, v10

    array-length v10, v1

    filled-new-array/range {v3 .. v10}, [I

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/Emoji;->emojiCounts:[I

    const/16 v1, 0x8

    .line 66
    new-array v3, v1, [[Landroid/graphics/Bitmap;

    sput-object v3, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    .line 67
    new-array v1, v1, [[Z

    sput-object v1, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    .line 73
    new-instance v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda2;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->invalidateUiRunnable:Ljava/lang/Runnable;

    .line 75
    sput-boolean v2, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 77
    const-string/jumbo v35, "\ud83d\ude10"

    const-string/jumbo v36, "\ud83d\ude15"

    const-string/jumbo v3, "\ud83d\ude02"

    const-string/jumbo v4, "\ud83d\ude18"

    const-string/jumbo v5, "\u2764"

    const-string/jumbo v6, "\ud83d\ude0d"

    const-string/jumbo v7, "\ud83d\ude0a"

    const-string/jumbo v8, "\ud83d\ude01"

    const-string/jumbo v9, "\ud83d\udc4d"

    const-string/jumbo v10, "\u263a"

    const-string/jumbo v11, "\ud83d\ude14"

    const-string/jumbo v12, "\ud83d\ude04"

    const-string/jumbo v13, "\ud83d\ude2d"

    const-string/jumbo v14, "\ud83d\udc8b"

    const-string/jumbo v15, "\ud83d\ude12"

    const-string/jumbo v16, "\ud83d\ude33"

    const-string/jumbo v17, "\ud83d\ude1c"

    const-string/jumbo v18, "\ud83d\ude48"

    const-string/jumbo v19, "\ud83d\ude09"

    const-string/jumbo v20, "\ud83d\ude03"

    const-string/jumbo v21, "\ud83d\ude22"

    const-string/jumbo v22, "\ud83d\ude1d"

    const-string/jumbo v23, "\ud83d\ude31"

    const-string/jumbo v24, "\ud83d\ude21"

    const-string/jumbo v25, "\ud83d\ude0f"

    const-string/jumbo v26, "\ud83d\ude1e"

    const-string/jumbo v27, "\ud83d\ude05"

    const-string/jumbo v28, "\ud83d\ude1a"

    const-string/jumbo v29, "\ud83d\ude4a"

    const-string/jumbo v30, "\ud83d\ude0c"

    const-string/jumbo v31, "\ud83d\ude00"

    const-string/jumbo v32, "\ud83d\ude0b"

    const-string/jumbo v33, "\ud83d\ude06"

    const-string/jumbo v34, "\ud83d\udc4c"

    filled-new-array/range {v3 .. v36}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 89
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sput v1, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    .line 90
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42080000    # 34.0f

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sput v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    move v1, v0

    .line 91
    :goto_1
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 92
    sget-object v3, Lorg/telegram/messenger/Emoji;->emojiCounts:[I

    aget v3, v3, v1

    new-array v4, v3, [Landroid/graphics/Bitmap;

    aput-object v4, v2, v1

    .line 93
    sget-object v2, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    new-array v3, v3, [Z

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 96
    :goto_2
    sget-object v2, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 97
    :goto_3
    sget-object v3, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 98
    sget-object v4, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v6, v1

    int-to-short v7, v2

    invoke-direct {v5, v6, v7, v2}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(BSI)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRecentEmoji(Ljava/lang/String;)V
    .locals 4

    .line 920
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 922
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 924
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    .line 925
    sget-object v2, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 926
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearRecentEmoji()V
    .locals 3

    .line 981
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 982
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "filled_default"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 983
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 984
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 985
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    return-void
.end method

.method public static endsWithRightArrow(Ljava/lang/CharSequence;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 298
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 299
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x200d

    if-ne v0, v1, :cond_0

    .line 300
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x27a1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 251
    const-string/jumbo v4, "\ufe0f"

    const v5, 0xd83c

    if-lt v3, v5, :cond_3

    const v6, 0xd83e

    if-gt v3, v6, :cond_3

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 253
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xde2f

    if-eq v5, v6, :cond_1

    const v6, 0xdc04

    if-eq v5, v6, :cond_1

    const v6, 0xde1a

    if-eq v5, v6, :cond_1

    const v6, 0xdd7f

    if-eq v5, v6, :cond_1

    const v6, 0xdff3

    if-eq v5, v6, :cond_1

    const v6, 0xdf2b

    if-eq v5, v6, :cond_1

    const v6, 0xdc41

    if-eq v5, v6, :cond_1

    const v6, 0xdd75

    if-eq v5, v6, :cond_1

    const v6, 0xdfcc

    if-eq v5, v6, :cond_1

    const v6, 0xdfcb

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_3

    .line 258
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x20e3

    if-ne v3, v5, :cond_4

    return-object p0

    :cond_4
    const/16 v5, 0x23

    if-lt v3, v5, :cond_5

    const/16 v5, 0x3299

    if-gt v3, v5, :cond_5

    .line 270
    sget-object v5, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p0
.end method

.method public static fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    .line 480
    new-array v1, v0, [I

    .line 481
    invoke-static {p0, v1}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    const/4 p0, 0x0

    .line 482
    aget v1, v1, p0

    if-lez v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private static getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;
    .locals 3

    .line 304
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->endsWithRightArrow(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 307
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v1, :cond_1

    .line 309
    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    .line 311
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/messenger/Emoji$DrawableInfo;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 333
    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 335
    sget v3, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 339
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 342
    sget-object v3, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_2

    .line 344
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return-object v2

    .line 350
    :cond_3
    sget p0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    invoke-virtual {v0, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p0, 0x1

    .line 351
    iput-boolean p0, v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z

    return-object v0
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .locals 3

    .line 281
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 284
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/CompoundEmoji;->getCompoundEmojiDrawable(Ljava/lang/String;)Lorg/telegram/messenger/CompoundEmoji$CompoundEmojiDrawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 286
    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {p0, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_1
    new-instance v2, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;

    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->endsWithRightArrow(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-direct {v2, v0, p0}, Lorg/telegram/messenger/Emoji$SimpleEmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;Z)V

    .line 293
    sget p0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v2, v1, v1, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v2
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .locals 2

    .line 236
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 237
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public static isValidEmoji(Ljava/lang/CharSequence;)Z
    .locals 4

    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 321
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v2, :cond_1

    .line 323
    sget-object v3, Lorg/telegram/messenger/EmojiData;->emojiAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    .line 325
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lorg/telegram/messenger/Emoji$DrawableInfo;

    :cond_1
    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 209
    :try_start_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 217
    :goto_0
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 218
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 219
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 221
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 224
    :goto_1
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception p0

    .line 228
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "Error loading emoji"

    invoke-static {v1, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method private static loadEmoji(BS)V
    .locals 2

    .line 113
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    aget-object v0, v0, p0

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 117
    aput-boolean v1, v0, p1

    .line 118
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda3;-><init>(BS)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static loadEmojiAlphaMasks()Landroid/util/SparseIntArray;
    .locals 10

    .line 171
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "emoji/metadata.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x2000

    .line 174
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 176
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 177
    new-array v6, v5, [B

    .line 178
    invoke-static {v2, v3, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 183
    :cond_0
    new-array v2, v4, [B

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, [B

    .line 186
    array-length v9, v8

    invoke-static {v8, v3, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    array-length v8, v8

    add-int/2addr v6, v8

    goto :goto_1

    .line 190
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 191
    div-int/lit8 v4, v4, 0x4

    .line 193
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    :goto_2
    if-ge v3, v4, :cond_2

    .line 195
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 196
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int/2addr v6, v7

    .line 197
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_3
    if-eqz v0, :cond_3

    .line 171
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 201
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static loadRecentEmoji()V
    .locals 19

    .line 989
    const-string v0, "filled_default"

    const-string v1, "="

    const-string v2, ","

    const-string v3, ""

    const-string v4, "emojis"

    sget-boolean v5, Lorg/telegram/messenger/Emoji;->recentEmojiLoaded:Z

    if-eqz v5, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v5, 0x1

    .line 992
    sput-boolean v5, Lorg/telegram/messenger/Emoji;->recentEmojiLoaded:Z

    .line 993
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v7, 0x0

    .line 997
    :try_start_0
    sget-object v8, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 998
    invoke-interface {v6, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_5

    .line 999
    :try_start_1
    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1000
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 1001
    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1002
    array-length v9, v8

    move v10, v7

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 1003
    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1004
    aget-object v12, v11, v7

    invoke-static {v12}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1005
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v16, v5

    move v15, v7

    :goto_1
    const/4 v5, 0x4

    if-ge v15, v5, :cond_2

    long-to-int v5, v12

    int-to-char v5, v5

    .line 1008
    :try_start_2
    invoke-virtual {v14, v7, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    shr-long/2addr v12, v5

    const-wide/16 v17, 0x0

    cmp-long v5, v12, v17

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 1014
    :cond_2
    :goto_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1015
    sget-object v5, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aget-object v11, v11, v16

    invoke-static {v11}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v16, v5

    goto/16 :goto_6

    :cond_4
    move/from16 v16, v5

    .line 1019
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1020
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    goto :goto_4

    :cond_5
    move/from16 v16, v5

    .line 1022
    const-string v4, "emojis2"

    invoke-interface {v6, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1023
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 1024
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1025
    array-length v5, v4

    move v8, v7

    :goto_3
    if-ge v8, v5, :cond_6

    aget-object v9, v4, v8

    .line 1026
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1027
    sget-object v10, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v11, v9, v7

    aget-object v9, v9, v16

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1031
    :cond_6
    :goto_4
    sget-object v4, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1032
    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v7

    .line 1033
    :goto_5
    sget-object v5, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    array-length v8, v5

    if-ge v4, v8, :cond_7

    .line 1034
    sget-object v8, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    aget-object v9, v5, v4

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1036
    :cond_7
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    move/from16 v5, v16

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveRecentEmoji()V

    .line 1040
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/Emoji;->sortEmoji()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 1042
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1046
    :goto_7
    :try_start_3
    const-string v0, "color"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1047
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 1048
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1049
    array-length v2, v0

    move v3, v7

    :goto_8
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 1050
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1051
    sget-object v5, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    aget-object v6, v4, v7

    const/16 v16, 0x1

    aget-object v4, v4, v16

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    .line 1055
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_9
    return-void
.end method

.method public static parseEmojis(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Emoji$EmojiSpanRange;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 486
    invoke-static {p0, v0}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/Emoji$EmojiSpanRange;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2a

    .line 491
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_13

    .line 499
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 500
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, -0x1

    move-object/from16 v9, p1

    move/from16 v16, v3

    move v13, v7

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v10, v4, :cond_29

    const-wide/16 v18, 0x0

    .line 507
    :try_start_0
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v6, 0xd83c

    const/16 v21, 0x1

    if-lt v5, v6, :cond_1

    const v8, 0xd83e

    if-le v5, v8, :cond_2

    :cond_1
    cmp-long v8, v11, v18

    if-eqz v8, :cond_6

    const-wide v22, -0x100000000L

    and-long v22, v11, v22

    cmp-long v22, v22, v18

    if-nez v22, :cond_6

    const-wide/32 v22, 0xffff

    and-long v22, v11, v22

    const-wide/32 v24, 0xd83c

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    const v6, 0xdde6

    if-lt v5, v6, :cond_6

    const v6, 0xddff

    if-gt v5, v6, :cond_6

    :cond_2
    if-ne v13, v7, :cond_3

    move v13, v10

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_4

    move v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 517
    :cond_4
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    shl-long v11, v11, v16

    int-to-long v7, v5

    or-long/2addr v11, v7

    :cond_5
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_12

    .line 521
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    const/16 v7, 0x2640

    if-eq v5, v7, :cond_8

    const/16 v7, 0x2642

    if-eq v5, v7, :cond_8

    const/16 v7, 0x2695

    if-eq v5, v7, :cond_8

    :cond_7
    if-lez v8, :cond_9

    const v7, 0xf000

    and-int/2addr v7, v5

    const v8, 0xd000

    if-ne v7, v8, :cond_9

    .line 522
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v11, v18

    :goto_3
    move/from16 v17, v21

    goto :goto_2

    :cond_9
    const/16 v7, 0x20e3

    if-ne v5, v7, :cond_c

    if-lez v10, :cond_5

    .line 528
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_a

    const/16 v8, 0x39

    if-le v7, v8, :cond_b

    :cond_a
    const/16 v8, 0x23

    if-eq v7, v8, :cond_b

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_5

    :cond_b
    sub-int v8, v10, v3

    add-int/lit8 v14, v8, 0x1

    .line 532
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v3

    move/from16 v17, v21

    const/4 v15, 0x0

    goto :goto_2

    :cond_c
    const/16 v3, 0xa9

    if-eq v5, v3, :cond_e

    const/16 v3, 0xae

    if-eq v5, v3, :cond_e

    const/16 v3, 0x203c

    if-lt v5, v3, :cond_d

    const/16 v3, 0x3299

    if-gt v5, v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v6, -0x1

    goto :goto_6

    .line 538
    :cond_e
    :goto_4
    sget-object v3, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v6, -0x1

    if-ne v13, v6, :cond_f

    move v13, v10

    goto :goto_5

    :cond_f
    if-eqz v15, :cond_10

    move v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_10
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 547
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_6
    if-eq v13, v6, :cond_11

    const/4 v3, 0x0

    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto :goto_7

    :cond_11
    const v3, 0xfe0f

    if-eq v5, v3, :cond_5

    const/16 v3, 0xa

    if-eq v5, v3, :cond_5

    const/16 v3, 0x20

    if-eq v5, v3, :cond_5

    const/16 v3, 0x9

    if-eq v5, v3, :cond_5

    move/from16 v3, v21

    :goto_7
    if-eqz v17, :cond_18

    add-int/lit8 v6, v10, 0x2

    if-ge v6, v4, :cond_18

    add-int/lit8 v7, v10, 0x1

    .line 559
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move/from16 v26, v3

    const v3, 0xd83c

    if-ne v8, v3, :cond_12

    .line 561
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v8, 0xdffb

    if-lt v3, v8, :cond_17

    const v8, 0xdfff

    if-gt v3, v8, :cond_17

    add-int/lit8 v10, v10, 0x3

    .line 563
    invoke-interface {v0, v7, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    move v3, v6

    goto :goto_b

    .line 567
    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_17

    move/from16 v27, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const v3, 0xd83c

    if-ne v6, v3, :cond_17

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const v3, 0xdff4

    if-ne v6, v3, :cond_17

    const v3, 0xdb40

    if-ne v8, v3, :cond_17

    .line 570
    :goto_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v7, v6, :cond_13

    .line 571
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v6, v7, 0x1

    .line 573
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v6, v8, :cond_14

    .line 574
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v6, v7, 0x2

    .line 578
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v6, v8, :cond_16

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_15

    goto :goto_9

    :cond_15
    move v7, v6

    goto :goto_8

    :cond_16
    :goto_9
    add-int/lit8 v10, v7, 0x1

    :cond_17
    :goto_a
    move v3, v10

    goto :goto_b

    :cond_18
    move/from16 v26, v3

    goto :goto_a

    :goto_b
    move v7, v3

    const/4 v6, 0x0

    :goto_c
    const/4 v8, 0x3

    if-ge v6, v8, :cond_23

    add-int/lit8 v8, v7, 0x1

    if-ge v8, v4, :cond_21

    .line 589
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    move/from16 v27, v3

    const/4 v3, 0x1

    if-ne v6, v3, :cond_19

    const/16 v3, 0x200d

    if-ne v10, v3, :cond_1e

    .line 591
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 593
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move v7, v8

    const v3, 0xfe0f

    const/16 v17, 0x0

    const/16 v26, 0x0

    goto :goto_11

    :cond_19
    const/16 v3, 0x2a

    if-eq v5, v3, :cond_1a

    const/16 v3, 0x23

    if-eq v5, v3, :cond_1a

    const/16 v3, 0x30

    if-lt v5, v3, :cond_1b

    const/16 v3, 0x39

    if-gt v5, v3, :cond_1b

    :cond_1a
    const v3, 0xfe00

    goto :goto_f

    :cond_1b
    const/4 v3, -0x1

    if-eq v13, v3, :cond_1e

    const v3, 0xfe00

    if-lt v10, v3, :cond_1e

    const v3, 0xfe0f

    if-gt v10, v3, :cond_22

    add-int/lit8 v14, v14, 0x1

    if-nez v17, :cond_1d

    add-int/lit8 v7, v7, 0x2

    if-lt v7, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    move/from16 v17, v3

    :cond_1d
    move v7, v8

    :cond_1e
    :goto_e
    const v3, 0xfe0f

    goto :goto_11

    :goto_f
    if-lt v10, v3, :cond_1e

    const v3, 0xfe0f

    if-gt v10, v3, :cond_22

    add-int/lit8 v14, v14, 0x1

    if-nez v17, :cond_20

    add-int/lit8 v7, v7, 0x2

    if-lt v7, v4, :cond_1f

    const/4 v7, 0x1

    goto :goto_10

    :cond_1f
    const/4 v7, 0x0

    :goto_10
    move/from16 v17, v7

    :cond_20
    move v7, v8

    move/from16 v13, v27

    const/4 v15, 0x1

    goto :goto_11

    :cond_21
    move/from16 v27, v3

    goto :goto_e

    :cond_22
    :goto_11
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v27

    goto :goto_c

    :cond_23
    move/from16 v27, v3

    if-eqz v26, :cond_24

    if-eqz v9, :cond_24

    const/16 v20, 0x0

    .line 620
    aput v20, v9, v20

    const/4 v3, 0x0

    move-object v9, v3

    :cond_24
    if-eqz v17, :cond_25

    add-int/lit8 v3, v7, 0x2

    if-ge v3, v4, :cond_25

    add-int/lit8 v5, v7, 0x1

    .line 623
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v8, 0xd83c

    if-ne v6, v8, :cond_25

    .line 624
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const v8, 0xdffb

    if-lt v6, v8, :cond_25

    const v8, 0xdfff

    if-gt v6, v8, :cond_25

    add-int/lit8 v7, v7, 0x3

    .line 626
    invoke-interface {v0, v5, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    move v7, v3

    :cond_25
    if-eqz v17, :cond_28

    if-eqz v9, :cond_26

    const/16 v20, 0x0

    .line 633
    aget v3, v9, v20

    const/16 v21, 0x1

    add-int/lit8 v3, v3, 0x1

    aput v3, v9, v20

    :cond_26
    if-ltz v13, :cond_27

    add-int/2addr v14, v13

    if-gt v14, v4, :cond_27

    .line 636
    new-instance v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v13, v14, v5}, Lorg/telegram/messenger/Emoji$EmojiSpanRange;-><init>(IILjava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    const/4 v3, 0x0

    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :cond_28
    const/16 v21, 0x1

    add-int/lit8 v10, v7, 0x1

    move/from16 v3, v27

    const/4 v7, -0x1

    goto/16 :goto_0

    .line 646
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_29
    if-eqz v9, :cond_2a

    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v20, 0x0

    .line 649
    aput v20, v9, v20

    :cond_2a
    :goto_13
    return-object v1
.end method

.method public static preloadEmoji(Ljava/lang/CharSequence;)V
    .locals 1

    .line 106
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getDrawableInfo(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$DrawableInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 108
    iget-byte v0, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page:B

    iget-short p0, p0, Lorg/telegram/messenger/Emoji$DrawableInfo;->page2:S

    invoke-static {v0, p0}, Lorg/telegram/messenger/Emoji;->loadEmoji(BS)V

    :cond_0
    return-void
.end method

.method public static removeRecentEmoji(Ljava/lang/String;)V
    .locals 2

    .line 933
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v1, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 936
    :cond_1
    :goto_0
    sget-object p0, Lorg/telegram/messenger/Emoji;->DEFAULT_RECENT:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->addRecentEmoji(Ljava/lang/String;)V

    return-void
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 655
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;ZF)Ljava/lang/CharSequence;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 659
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[IIFI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 663
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 667
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[IIFI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[IIFI)Ljava/lang/CharSequence;
    .locals 9

    if-eqz p0, :cond_c

    .line 671
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    if-nez p2, :cond_1

    .line 675
    instance-of p2, p0, Landroid/text/Spannable;

    if-eqz p2, :cond_1

    .line 676
    move-object p2, p0

    check-cast p2, Landroid/text/Spannable;

    goto :goto_0

    .line 678
    :cond_1
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    .line 680
    :goto_0
    invoke-static {p2, p3}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object p3

    .line 681
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    invoke-static {p0}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filterSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 685
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 686
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-interface {p2, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 689
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/16 v2, 0x64

    goto :goto_1

    :cond_3
    const/16 v2, 0x32

    :goto_1
    sub-int/2addr v2, p6

    move p6, v1

    .line 690
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p6, v3, :cond_b

    .line 692
    :try_start_0
    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    if-eqz p0, :cond_5

    .line 693
    array-length v4, p0

    if-lez v4, :cond_5

    .line 695
    array-length v4, p0

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, p0, v5

    if-eqz v6, :cond_4

    .line 696
    invoke-interface {p2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget v8, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-ne v7, v8, :cond_4

    invoke-interface {p2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iget v7, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    if-ne v6, v7, :cond_4

    goto :goto_8

    :catch_0
    move-exception v3

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    .line 705
    array-length v4, v0

    if-lez v4, :cond_7

    move v4, v1

    .line 707
    :goto_4
    array-length v5, v0

    if-ge v4, v5, :cond_7

    .line 708
    aget-object v5, v0, v4

    if-eqz v5, :cond_6

    .line 709
    invoke-interface {p2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget v7, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-ne v6, v7, :cond_6

    invoke-interface {p2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iget v6, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    if-ne v5, v6, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 718
    :cond_7
    iget-object v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-static {v4}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 720
    new-instance v5, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-direct {v5, v4, p4, p1}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint$FontMetricsInt;)V

    .line 721
    iget-object v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    iput-object v4, v5, Lorg/telegram/messenger/Emoji$EmojiSpan;->emoji:Ljava/lang/String;

    .line 722
    iput p5, v5, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    .line 723
    iget v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v3, v3, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    const/16 v6, 0x21

    invoke-interface {p2, v5, v4, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 726
    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 728
    :cond_9
    :goto_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_a

    add-int/lit8 v3, p6, 0x1

    if-lt v3, v2, :cond_a

    goto :goto_9

    :cond_a
    :goto_8
    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_2

    .line 732
    :cond_b
    :goto_9
    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->filterSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_c
    :goto_a
    return-object p0
.end method

.method public static replaceWithRestrictedEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 13

    .line 740
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useSystemEmoji:Z

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 744
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 745
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 746
    const-string v1, "RestrictedEmoji"

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 747
    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    if-nez p2, :cond_1

    move-object v6, v8

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    move-object v6, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    .line 750
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 751
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    :goto_1
    move-object v1, v0

    goto :goto_2

    .line 753
    :cond_2
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_1

    .line 755
    :goto_2
    invoke-static {v1, v8}, Lorg/telegram/messenger/Emoji;->parseEmojis(Ljava/lang/CharSequence;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 756
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 760
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v1, v7, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 763
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    const/16 v0, 0x64

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_4
    const/16 v0, 0x32

    goto :goto_3

    :goto_4
    move v4, v7

    .line 764
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    .line 766
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;

    if-eqz p0, :cond_6

    move v5, v7

    .line 769
    :goto_6
    array-length v6, p0

    if-ge v5, v6, :cond_6

    .line 770
    aget-object v6, p0, v5

    if-eqz v6, :cond_5

    .line 771
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    iget v10, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    if-ne v9, v10, :cond_5

    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    iget v9, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    if-ne v6, v9, :cond_5

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    if-eqz p2, :cond_8

    .line 782
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v7

    :cond_7
    if-ge v9, v6, :cond_8

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    .line 783
    invoke-static {v10, v8}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_8
    move-object v10, v8

    :goto_7
    if-eqz v10, :cond_9

    .line 791
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v5, v10, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_8

    .line 793
    :cond_9
    new-instance v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const-wide/16 v9, 0x0

    invoke-direct {v5, v9, v10, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    .line 795
    :goto_8
    iget-object v6, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->code:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->emoji:Ljava/lang/String;

    const/16 v6, 0x14

    .line 796
    iput v6, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 797
    iget v6, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->start:I

    iget v0, v0, Lorg/telegram/messenger/Emoji$EmojiSpanRange;->end:I

    const/16 v9, 0x21

    invoke-interface {v1, v5, v6, v0, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 799
    :goto_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 801
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_a

    add-int/lit8 v0, v4, 0x1

    if-lt v0, v3, :cond_a

    goto :goto_c

    :cond_a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_b
    :goto_c
    return-object v1

    :cond_c
    :goto_d
    return-object p0
.end method

.method public static replaceWithRestrictedEmoji(Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/Runnable;)Ljava/lang/CharSequence;
    .locals 0

    .line 736
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/Emoji;->replaceWithRestrictedEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static saveEmojiColors()V
    .locals 5

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1062
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1063
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1064
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1070
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "color"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveRecentEmoji()V
    .locals 5

    .line 967
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalEmojiSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 970
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 971
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 977
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "emojis2"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static sortEmoji()V
    .locals 3

    .line 941
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 942
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 943
    sget-object v2, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/messenger/Emoji$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 961
    :goto_1
    sget-object v0, Lorg/telegram/messenger/Emoji;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x30

    if-le v1, v2, :cond_1

    .line 962
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
