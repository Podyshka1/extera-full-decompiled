.class public Lorg/telegram/messenger/ChatThemeController;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ChatThemeController$ThemeList;
    }
.end annotation


# static fields
.field public static final THEME_LIST_WITH_DEFAULT:I = 0x1

.field public static final THEME_LIST_WITH_EMOJI:I = 0x2

.field public static final THEME_LIST_WITH_GIFTS:I = 0x4

.field public static volatile chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

.field private static final instances:[Lorg/telegram/messenger/ChatThemeController;


# instance fields
.field private final allChatGiftThemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation
.end field

.field private allChatThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogEmoticonsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/ActionBar/theme/ThemeKey;",
            ">;"
        }
    .end annotation
.end field

.field private final giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

.field private volatile lastReloadTimeMs:J

.field private final reloadTimeoutMs:J

.field private final themeIdWallpaperThumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile themesHash:J

.field private final usedGiftThemesBySlug:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final usedGiftThemesByUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8Na7zulZalXIe__rhLaQ2WiSe8w(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 493
    new-instance v0, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 495
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ljL1XJFcrdtWan4GgdCkHeA1hI(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/ui/ActionBar/EmojiThemes;)V
    .locals 0

    .line 213
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BbziMLBR9ndND54MZeoCa83AWNE(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;Lorg/telegram/ui/ActionBar/EmojiThemes;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->lambda$putThemeIfNeeded$1(Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZY0ep9kvRBHPwJUOO1LpHzFWPE(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 158
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G3j5Hi-oHYW8g2375iNZBBkeAd8(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 515
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 518
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    invoke-static {p0, v3}, Lorg/telegram/messenger/wallpaper/pgm/PGMImage;->read(Ljava/io/InputStream;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 521
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v6, 0x0

    move-object v7, v1

    move v8, v6

    :cond_0
    :goto_0
    if-ge v8, v5, :cond_2

    :try_start_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    .line 522
    const-string/jumbo v10, "patterns = "

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0xb

    .line 523
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 524
    array-length v10, v9

    div-int/lit8 v10, v10, 0x34

    .line 525
    new-instance v11, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v11, v9}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 527
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v6

    :goto_1
    if-ge v7, v10, :cond_1

    .line 529
    :try_start_5
    invoke-static {v11}, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->deserialize(Lorg/telegram/tgnet/InputSerializedData;)Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v7, v9

    goto :goto_2

    .line 532
    :cond_1
    invoke-virtual {v11}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v9

    goto :goto_0

    :catchall_1
    move-exception v3

    goto :goto_2

    .line 535
    :cond_2
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object v7, v1

    goto :goto_2

    :catchall_4
    move-exception v3

    move-object v4, v1

    move-object v7, v4

    .line 514
    :goto_2
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p0

    :try_start_9
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_6
    move-exception p0

    move-object v4, v1

    move-object v7, v4

    :goto_4
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v2

    :try_start_b
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_1
    move-exception p0

    move-object v4, v1

    move-object v7, v4

    .line 536
    :goto_6
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    if-eqz v4, :cond_3

    .line 541
    new-instance v1, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;

    invoke-direct {v1, v4, v0, v7}, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;-><init>(Landroid/graphics/Bitmap;ILjava/util/List;)V

    .line 546
    :cond_3
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda17;

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JEArpfdnL8b8n60s46CXjA5lc2M(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 452
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlcK1XWgjpGqT7gIImemEXTrZwI(Lorg/telegram/messenger/ChatThemeController;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$preloadAllWallpaperThumbs$7(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QUzV-3-vCFENvtAWpiFT0VyTgZg(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$processUpdate$16(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6jSDG816nBfdXxCbRTlr-TjMNg(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestNextChatThemes$21(Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_4fBksxetLsV5HAWGFiG_2_ySM(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->lambda$setDialogTheme$6(Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ta7_jJnF83wl-CX-wFca2i6wvnY(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/tl/TL_account$Themes;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$4(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/tl/TL_account$Themes;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UuPeIPP92izRevFT1ZR3WLEHvvc(Lorg/telegram/messenger/ChatThemeController;JLorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->lambda$processUpdate$15(JLorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dr00Ssey-JI-8nxcIUsEgc8hy4M(Ljava/io/File;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 556
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :try_start_1
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    .line 560
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 561
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x34

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;

    .line 563
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;->serialize(Lorg/telegram/tgnet/OutputSerializedData;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 566
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "patterns = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 567
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 570
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 571
    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/wallpaper/pgm/PGMImage;->write(Landroid/graphics/Bitmap;Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_2

    .line 573
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 574
    invoke-static {p2, p0, p1}, Lorg/telegram/messenger/wallpaper/pgm/PGMImage;->write(Landroid/graphics/Bitmap;Ljava/io/OutputStream;Ljava/util/List;)V

    .line 575
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 555
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 578
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWwjGqvcOQqb4D4FPxSNVrDiH74(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$init$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nJ5_4MFWZlRingpABu3V9ucLTQA(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/tl/TL_account$ChatThemes;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestNextChatThemes$23(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/tl/TL_account$ChatThemes;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkFFfKgHFgAw65TNhpApu9M4wPk(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$3(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nl8E30xElOiHenWIlvDaS3YYBKo(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 443
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 447
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 451
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda20;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$o1-MsfmvVGAloVaHDkaRXcpSlkE(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ChatThemeController;->lambda$setWallpaperToPeer$18(Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFUyRd9CWqhIdY2lGiWtO4Us05c(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestNextChatThemes$22(Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkK58zKdK6xmgJ5ztu1TsHvw3hc(Lorg/telegram/messenger/ChatThemeController;JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ChatThemeController;->lambda$setWallpaperToPeer$19(JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wktjABmk4cyHF_ZuprGRybyD9hg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$xA5_CC1ftJ0s4EhnsPndKcJt69M(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;)V
    .locals 0

    .line 546
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-kBmjJGB4-msxwXltDwEbhBgUI(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 953
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6bifoDt_9R1svMWTVvWbYqFHI8(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 466
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 467
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x57

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 470
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "chatThemeQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v0, 0x10

    .line 239
    new-array v0, v0, [Lorg/telegram/messenger/ChatThemeController;

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const-wide/32 v0, 0x6ddd00

    .line 44
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->reloadTimeoutMs:J

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    .line 53
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$ThemeList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;-><init>(Lorg/telegram/messenger/ChatThemeController-IA;)V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    .line 256
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    .line 858
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesByUsers:Ljava/util/Map;

    .line 859
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    .line 65
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->init()V

    return-void
.end method

.method public static equals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 263
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 264
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 266
    :cond_1
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v2}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private getAllChatThemesFromPrefs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "theme_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    new-instance v6, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v5, 0x1

    .line 193
    :try_start_0
    invoke-virtual {v6, v5}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {v6, v7, v5}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 195
    new-instance v6, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v7, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v6, v7, v5, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 198
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getEmojiSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 182
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "chatthemeconfig_emoji"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/ChatThemeController;
    .locals 3

    .line 242
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 244
    const-class v2, Lorg/telegram/messenger/ChatThemeController;

    monitor-enter v2

    .line 245
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lorg/telegram/messenger/ChatThemeController;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatThemeController;-><init>(I)V

    .line 248
    aput-object v1, v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 250
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v1
.end method

.method private getPatternFile(J)Ljava/io/File;
    .locals 5

    .line 459
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const-string p1, "%d_%d.jpg"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 178
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatthemeconfig_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperBitmap(JLorg/telegram/tgnet/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/tgnet/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 435
    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 436
    invoke-interface {p3, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p1

    .line 440
    sget-object p2, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda10;-><init>(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 659
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    return-object p0

    .line 662
    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 5

    .line 69
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 70
    iput-wide v1, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 71
    iput-wide v1, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 73
    :try_start_0
    const-string v3, "hash"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 74
    const-string/jumbo v3, "lastReload"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ChatThemeController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->loadGiftChatTheme(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 89
    const-string/jumbo v0, "\u274c"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 92
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public static isNotEmoticonWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;)Z
    .locals 0

    .line 668
    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 669
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$init$0(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 83
    new-instance v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;)V

    .line 84
    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$preloadAllWallpaperThumbs$7(Landroid/util/Pair;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private synthetic lambda$processUpdate$15(JLorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 3

    .line 615
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p2, v2

    const/4 p1, 0x1

    aput-object p3, p2, p1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processUpdate$16(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 5

    .line 635
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object v3, v4, p1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object p1, v4, v2

    const/4 v2, 0x3

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$putThemeIfNeeded$1(Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;Lorg/telegram/ui/ActionBar/EmojiThemes;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$requestAllChatThemes$3(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 1

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    or-int/lit8 p1, p3, 0x2

    .line 163
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->getEmojiThemes(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestAllChatThemes$4(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/tl/TL_account$Themes;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 127
    instance-of v0, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    check-cast p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;

    .line 129
    iget-wide v2, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;->hash:J

    iput-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 132
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    .line 133
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v0, "hash"

    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    invoke-interface {p4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string/jumbo v0, "lastReload"

    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    invoke-interface {p4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "count"

    invoke-interface {p4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 138
    :goto_0
    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v3, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 140
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 142
    invoke-virtual {v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_theme;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "theme_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    new-instance v4, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v4, v5, v3, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    .line 145
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->preloadWallpaper()V

    .line 146
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 149
    :cond_1
    instance-of p3, p3, Lorg/telegram/tgnet/tl/TL_account$TL_themesNotModified;

    if-eqz p3, :cond_2

    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    new-instance p3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p4}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 161
    new-instance p3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, v0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$requestNextChatThemes$21(Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 3

    .line 984
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->next_offset:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputoffset(Lorg/telegram/messenger/ChatThemeController$ThemeList;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->hash:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputhash(Lorg/telegram/messenger/ChatThemeController$ThemeList;J)V

    .line 986
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputlastReloadTimeMs(Lorg/telegram/messenger/ChatThemeController$ThemeList;J)V

    .line 987
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;Ljava/util/List;)V

    goto :goto_0

    .line 990
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 992
    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->next_offset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 993
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputcompleted(Lorg/telegram/messenger/ChatThemeController$ThemeList;Z)V

    .line 996
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 997
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticonOrSlug()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 999
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 1000
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->theme_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 1001
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lorg/telegram/messenger/ChatThemeController;->setGiftThemeUser(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 1004
    invoke-interface {p4, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestNextChatThemes$22(Lorg/telegram/tgnet/ResultCallback;)V
    .locals 3

    .line 1008
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputlastReloadTimeMs(Lorg/telegram/messenger/ChatThemeController$ThemeList;J)V

    .line 1009
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fputcompleted(Lorg/telegram/messenger/ChatThemeController$ThemeList;Z)V

    const/4 v0, 0x0

    .line 1010
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestNextChatThemes$23(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/tl/TL_account$ChatThemes;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p3, :cond_0

    .line 952
    new-instance p2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda22;

    invoke-direct {p2, p1, p3}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 958
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 959
    instance-of p3, p2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;

    if-eqz p3, :cond_4

    .line 960
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;

    .line 962
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p3, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->themes:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesStorage;->putGiftChatThemes(Ljava/util/List;)V

    .line 963
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p3, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->users:Ljava/util/ArrayList;

    iget-object v0, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 964
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 965
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 967
    iget-object p2, v2, Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;->themes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :cond_1
    :goto_0
    if-ge v1, p3, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 968
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    if-eqz v5, :cond_1

    .line 969
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 974
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 975
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 976
    new-instance p3, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {p3, v1, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;)V

    .line 977
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->preloadWallpaper()V

    .line 978
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 983
    :cond_3
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda23;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/tl/TL_account$Tl_chatThemes;Ljava/util/List;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    move-object v1, p0

    move-object v5, p1

    .line 1006
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_account$TL_chatThemesNotModified;

    if-eqz p1, :cond_5

    .line 1007
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0, v5}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$setDialogTheme$6(Lorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setWallpaperToPeer$18(Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 13

    move-wide v0, p2

    move-object/from16 v2, p5

    .line 806
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v3, :cond_8

    .line 807
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 811
    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    move-object v5, v4

    goto :goto_0

    .line 813
    :cond_0
    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v5, v0

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    move-object v5, v3

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 817
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 819
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_2
    :goto_1
    const/4 v6, 0x0

    move v7, v6

    .line 821
    :goto_2
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 822
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v8, :cond_5

    .line 823
    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 824
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v9, :cond_5

    if-eqz p4, :cond_6

    .line 826
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    .line 827
    iget-object v7, v8, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 828
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 829
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    :cond_3
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 832
    iget-object v5, v8, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 833
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 834
    invoke-virtual {p0, v0, v1, v5}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 835
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 836
    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v6

    aput-object v3, v1, v4

    invoke-virtual {v5, v7, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_6

    .line 838
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 839
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 840
    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 841
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 842
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    aput-object v3, v7, v4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v7, v2

    const/4 v2, 0x3

    aput-object v3, v7, v2

    invoke-virtual {v0, v1, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 849
    :cond_6
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget v12, p1, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    if-eqz p6, :cond_7

    .line 851
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 853
    :cond_7
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$setWallpaperToPeer$19(JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 805
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadWallpaperPatternBitmap(JLorg/telegram/messenger/Utilities$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;",
            ">;)V"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "rasterized/wallpaper"

    .line 507
    invoke-static {v1}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 508
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    const-string/jumbo p1, "pattern_%d.pgm.gz"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 510
    sget-object p1, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda16;

    invoke-direct {p2, v0, p3}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda16;-><init>(Ljava/io/File;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private preloadSticker(Ljava/lang/String;)V
    .locals 7

    .line 109
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 110
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "50_50"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 112
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private requestNextChatThemes(Lorg/telegram/tgnet/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgethash(Lorg/telegram/messenger/ChatThemeController$ThemeList;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetlastReloadTimeMs(Lorg/telegram/messenger/ChatThemeController$ThemeList;)J

    .line 942
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v2}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetlastReloadTimeMs(Lorg/telegram/messenger/ChatThemeController$ThemeList;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 944
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetcompleted(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 945
    :cond_3
    :goto_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$Tl_getUniqueGiftChatThemes;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$Tl_getUniqueGiftChatThemes;-><init>()V

    .line 946
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetoffset(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$Tl_getUniqueGiftChatThemes;->offset:Ljava/lang/String;

    .line 947
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgethash(Lorg/telegram/messenger/ChatThemeController$ThemeList;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$Tl_getUniqueGiftChatThemes;->hash:J

    const/16 v1, 0x32

    .line 948
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_account$Tl_getUniqueGiftChatThemes;->limit:I

    .line 950
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/DispatchQueue;)V

    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method private saveWallpaperBitmap(Landroid/graphics/Bitmap;J)V
    .locals 1

    .line 463
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p2

    .line 464
    sget-object p3, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveWallpaperPatternBitmap(Landroid/graphics/Bitmap;Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/wallpaper/WallpaperGiftPatternPosition;",
            ">;J)V"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "rasterized/wallpaper"

    .line 552
    invoke-static {v1}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 553
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, p4, v3

    const-string/jumbo p3, "pattern_%d.pgm.gz"

    invoke-static {v2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 554
    sget-object p3, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p4, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda18;

    invoke-direct {p4, v0, p2, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda18;-><init>(Ljava/io/File;Ljava/util/List;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDialogTheme(JLorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/tgnet/TLRPC$ChatTheme;Z)V
    .locals 5

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    .line 282
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->equals(Lorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 292
    iget-object v1, p3, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->giftSlug:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->setGiftThemeUser(Ljava/lang/String;J)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    .line 295
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_3

    .line 297
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p4, :cond_6

    .line 298
    :cond_3
    iput-object p4, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->theme:Lorg/telegram/tgnet/TLRPC$ChatTheme;

    .line 299
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_3

    .line 303
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    neg-long v3, p1

    invoke-virtual {p4, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p4

    if-eqz p4, :cond_6

    if-eqz p3, :cond_5

    .line 305
    iget-object v1, p3, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->emoticon:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p4, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 310
    :cond_6
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatTheme_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_7

    .line 311
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->toSavedString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v0

    :goto_4
    invoke-interface {p4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    .line 312
    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p5, :cond_8

    .line 315
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;-><init>()V

    .line 316
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->toInputTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Lorg/telegram/tgnet/TLRPC$InputChatTheme;

    move-result-object p3

    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->theme:Lorg/telegram/tgnet/TLRPC$InputChatTheme;

    .line 317
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 318
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ChatThemeController;)V

    invoke-virtual {p1, p4, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    :cond_8
    :goto_5
    return-void
.end method

.method private setGiftThemeUser(Ljava/lang/String;J)V
    .locals 4

    .line 862
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesByUsers:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 865
    iget-object p2, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 871
    iget-object p2, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 873
    iget-object p2, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesByUsers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesByUsers:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 881
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 882
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 884
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-eqz p1, :cond_3

    .line 885
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesByUsers:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 645
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_2

    .line 646
    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2

    .line 648
    :cond_2
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    if-eqz v1, :cond_4

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperNoFile;

    if-eqz v1, :cond_4

    .line 649
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v1, :cond_3

    .line 650
    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 652
    :cond_3
    iget-wide v3, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v2
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 590
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 591
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 592
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearWallpaper(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/ChatThemeController;->clearWallpaper(JZZ)V

    return-void
.end method

.method public clearWallpaper(JZZ)V
    .locals 8

    .line 677
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ltz v1, :cond_1

    .line 679
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 680
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 681
    iput-boolean p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->revert:Z

    if-nez p4, :cond_3

    .line 683
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 685
    iput-object v5, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 686
    iget v1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v6, -0x1000001

    and-int/2addr v1, v6

    iput v1, p4, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 687
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p4, v4}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 689
    :cond_0
    invoke-virtual {p0, p1, p2, v5}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    if-eqz p3, :cond_3

    .line 691
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    aput-object p4, p2, v2

    invoke-virtual {p3, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 695
    :cond_1
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    neg-long v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p4

    .line 696
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 697
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 699
    iput-object v5, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 700
    iget v1, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 701
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p4, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 703
    :cond_2
    invoke-virtual {p0, p1, p2, v5}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    if-eqz p3, :cond_3

    .line 705
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p4, v1, v4

    aput-object p3, v1, v2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p3, v1, v3

    const/4 p4, 0x3

    aput-object p3, v1, p4

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 709
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public clearWallpaperImages()V
    .locals 0

    return-void
.end method

.method public clearWallpaperThumbImages()V
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 3

    .line 327
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatTheme_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->fromSavedString(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ChatThemeController;->getTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    return-object p1
.end method

.method public getDialogWallpaper(J)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 4

    .line 369
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->customThemes:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p1

    .line 379
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p1

    .line 384
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatWallpaper_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 386
    new-instance p2, Lorg/telegram/tgnet/SerializedData;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 p1, 0x1

    .line 388
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p2, v0, p1}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 390
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method public getEmojiThemes(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 906
    invoke-static {p1, v0}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    const/4 v1, 0x2

    .line 907
    invoke-static {p1, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v1

    const/4 v2, 0x4

    .line 908
    invoke-static {p1, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result p1

    .line 910
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 911
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 912
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetthemes(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 915
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 916
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    .line 919
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez v0, :cond_3

    .line 920
    :cond_2
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesDefault(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 923
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v3, 0x0

    .line 924
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors(Lorg/telegram/ui/ActionBar/EmojiThemes$ColorsLoadedCallback;)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public getGiftThemeUser(Ljava/lang/String;)J
    .locals 2

    .line 890
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->usedGiftThemesBySlug:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 892
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 3

    if-eqz p1, :cond_2

    .line 337
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->giftSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->giftSlug:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object p1

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 341
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeKey()Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWallpaperThumbBitmap(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public isAllThemesFullyLoaded()Z
    .locals 1

    .line 930
    invoke-virtual {p0}, Lorg/telegram/messenger/ChatThemeController;->isGiftThemesFullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGiftThemesFullyLoaded()Z
    .locals 1

    .line 934
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->giftsThemeList:Lorg/telegram/messenger/ChatThemeController$ThemeList;

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController$ThemeList;->-$$Nest$fgetcompleted(Lorg/telegram/messenger/ChatThemeController$ThemeList;)Z

    move-result v0

    return v0
.end method

.method public loadNextChatThemes(Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/ResultCallback;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->requestNextChatThemes(Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public loadWallpaperBitmap(JILorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 491
    new-instance p3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda14;

    invoke-direct {p3, p4}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperBitmap(JLorg/telegram/tgnet/ResultCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 499
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/messenger/ChatThemeController;->loadWallpaperPatternBitmap(JLorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    return-void
.end method

.method public preloadAllWallpaperImages(Z)V
    .locals 6

    .line 397
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 398
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 405
    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public preloadAllWallpaperThumbs(Z)V
    .locals 6

    .line 410
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 411
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/ChatThemeController;)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public processUpdate(Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;)V
    .locals 6

    .line 596
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 599
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 602
    :cond_0
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->id:J

    .line 603
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 604
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->wallpaper_overridden:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    .line 605
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 606
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    goto :goto_0

    .line 608
    :cond_1
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper_overridden:Z

    .line 609
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 610
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v1, -0x1000001

    and-int/2addr p1, v1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 612
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 613
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 614
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v3, v4, v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ChatThemeController;JLorg/telegram/tgnet/TLRPC$UserFull;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 619
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 621
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatThemeController;->wallpaperEquals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 624
    :cond_3
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    neg-long v3, v3

    .line 625
    iget v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 626
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePeerWallpaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 627
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit16 p1, p1, 0x80

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    goto :goto_1

    .line 629
    :cond_4
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 630
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    and-int/lit16 p1, p1, -0x81

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 632
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 633
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 634
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public putThemeIfNeeded(Lorg/telegram/tgnet/TLRPC$ChatTheme;)V
    .locals 3

    .line 98
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;

    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;)V

    .line 102
    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLRPC$TL_chatThemeUniqueGift;Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors(Lorg/telegram/ui/ActionBar/EmojiThemes$ColorsLoadedCallback;)V

    .line 103
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->putGiftChatTheme(Lorg/telegram/tgnet/TLRPC$ChatTheme;)V

    :cond_0
    return-void
.end method

.method public requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/ResultCallback;",
            "Z)V"
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 117
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->init()V

    .line 120
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 122
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getChatThemes;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getChatThemes;-><init>()V

    .line 123
    iget-wide v1, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_account$getChatThemes;->hash:J

    .line 124
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/DispatchQueue;)V

    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;Z)V

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    .line 168
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    or-int/lit8 p2, p2, 0x2

    .line 169
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/ChatThemeController;->getEmojiThemes(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public requestChatTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/theme/ThemeKey;",
            "Lorg/telegram/tgnet/ResultCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->giftSlug:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatGiftThemes:Ljava/util/Map;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->giftSlug:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz p1, :cond_1

    .line 213
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors(Lorg/telegram/ui/ActionBar/EmojiThemes$ColorsLoadedCallback;)V

    return-void

    .line 215
    :cond_1
    invoke-interface {p2, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 220
    :cond_2
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$1;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/tgnet/ResultCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    return-void

    .line 206
    :cond_3
    :goto_0
    invoke-interface {p2, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 4

    .line 350
    const-string v0, "_"

    const-string v1, "chatWallpaper_"

    if-eqz p3, :cond_1

    .line 351
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 355
    invoke-virtual {p3, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 356
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    .line 358
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-interface {v2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 360
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 362
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 364
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveWallpaperBitmap(Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;J)V
    .locals 3

    .line 479
    iget-object v0, p1, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 480
    iget v1, p1, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->mode:I

    if-nez v1, :cond_0

    .line 483
    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->saveWallpaperBitmap(Landroid/graphics/Bitmap;J)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 485
    iget-object p1, p1, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->giftPatternPositions:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->saveWallpaperPatternBitmap(Landroid/graphics/Bitmap;Ljava/util/List;J)V

    :cond_1
    return-void
.end method

.method public setDialogTheme(JLorg/telegram/tgnet/TLRPC$ChatTheme;Z)V
    .locals 6

    .line 272
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->of(Lorg/telegram/tgnet/TLRPC$ChatTheme;)Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object v3

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    .line 273
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/tgnet/TLRPC$ChatTheme;Z)V

    return-void
.end method

.method public setDialogTheme(JLorg/telegram/ui/ActionBar/theme/ThemeKey;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 277
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/tgnet/TLRPC$ChatTheme;Z)V

    return-void
.end method

.method public setWallpaperToPeer(JLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)I
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    .line 715
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;-><init>()V

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-ltz v6, :cond_0

    .line 717
    iget v8, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 718
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 720
    :cond_0
    iget v8, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-long v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    .line 721
    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 723
    :goto_0
    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->forBoth:Z

    iput-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->for_both:Z

    const/4 v8, 0x4

    if-eqz v4, :cond_7

    .line 725
    iget-object v10, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v10, :cond_7

    .line 727
    iget v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 728
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    iput v10, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->id:I

    if-ltz v6, :cond_1

    .line 733
    iget v6, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v6

    const/4 v12, 0x0

    goto :goto_1

    .line 735
    :cond_1
    iget v6, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v12, v2

    invoke-virtual {v6, v12, v13}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    move-object v12, v6

    const/4 v6, 0x0

    .line 738
    :goto_1
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    .line 739
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    .line 740
    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 v15, 0x1

    iget-wide v9, v14, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v9, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 741
    iget-object v9, v14, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v9, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 742
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v9, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 743
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v10, v14

    float-to-int v10, v10

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 744
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    .line 745
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    .line 746
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 747
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 748
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 749
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 750
    iget v10, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    .line 751
    iput-object v5, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 754
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_2

    :cond_2
    if-eqz v12, :cond_3

    .line 756
    iget-object v10, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_4

    .line 758
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 759
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object v9, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 762
    :cond_4
    iget-object v9, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v10, v10, 0x79

    .line 766
    iput v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 768
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    .line 769
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v10, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    move-object v14, v12

    .line 770
    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v11, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 771
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v11, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 772
    iget v11, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    iput v11, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 773
    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    iput-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    .line 774
    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    iput-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    .line 775
    iget-boolean v12, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    iput-boolean v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    .line 776
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v12, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    move v12, v11

    .line 777
    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v10, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    .line 778
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object v4, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 779
    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iput-object v4, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    or-int/lit8 v4, v12, 0x4

    .line 780
    iput v4, v9, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    const/4 v4, 0x0

    if-eqz v6, :cond_5

    .line 782
    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 783
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v10, 0x1000000

    or-int/2addr v9, v10

    iput v9, v6, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 784
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    invoke-virtual {v9, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 785
    iget v9, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v11, v12, v4

    aput-object v6, v12, v15

    invoke-virtual {v9, v10, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v14, :cond_6

    .line 787
    iput-object v9, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 788
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags2:I

    .line 789
    invoke-virtual {v1}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v14, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 790
    iget v6, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v9, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v14, v12, v4

    aput-object v11, v12, v15

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x2

    aput-object v11, v12, v10

    const/4 v10, 0x3

    aput-object v11, v12, v10

    invoke-virtual {v6, v9, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    if-eqz p6, :cond_8

    .line 794
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_7
    const/4 v15, 0x1

    .line 797
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/2addr v4, v15

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 798
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    move-result-object v4

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    move v4, v15

    .line 800
    :cond_8
    :goto_4
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/2addr v6, v8

    iput v6, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 801
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getWallpaperSetting(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 805
    iget v0, v1, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda13;

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ChatThemeController;JZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v7, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    return v0
.end method
