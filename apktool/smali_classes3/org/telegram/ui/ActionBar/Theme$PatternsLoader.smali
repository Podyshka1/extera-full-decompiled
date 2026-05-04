.class public Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternsLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;
    }
.end annotation


# static fields
.field private static loader:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;


# instance fields
.field private account:I

.field private watingForLoad:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$3rNQzJ7XM6Kf_cPG0Io0cqq9hz0(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->lambda$new$0(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHsdNJ7yChXMcy4GaCblr_Xsv6k(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->lambda$checkCurrentWallpaper$2(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbXVHEP65mAyRTJiwgt3l3RCEy0(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->lambda$didReceivedNotification$3(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0wOcgjyCZlAqRxTyz9g5IIxXj4(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->lambda$new$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    if-nez p1, :cond_0

    return-void

    .line 1142
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkCurrentWallpaper(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 1223
    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkCurrentWallpaperInternal(Ljava/util/ArrayList;Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1227
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetcurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetcurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetcurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1229
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1233
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 1234
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1235
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1236
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1237
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    .line 1238
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "wallpaper"

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    goto :goto_0

    .line 1242
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 1243
    :cond_3
    :goto_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1244
    iget p1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static createLoader(Z)V
    .locals 8

    .line 1096
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->loader:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_a

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1117
    const-string v2, "Night"

    goto :goto_1

    .line 1114
    :cond_1
    const-string v2, "Day"

    goto :goto_1

    .line 1111
    :cond_2
    const-string v2, "Arctic Blue"

    goto :goto_1

    .line 1108
    :cond_3
    const-string v2, "Dark Blue"

    goto :goto_1

    .line 1105
    :cond_4
    const-string v2, "Blue"

    .line 1120
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetthemesDict()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v2, :cond_9

    .line 1121
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 1124
    :cond_5
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, p0

    :goto_2
    if-ge v4, v3, :cond_9

    .line 1125
    iget-object v5, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 1126
    iget v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-eq v6, v7, :cond_8

    iget-object v6, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1135
    :cond_a
    new-instance p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;-><init>(Ljava/util/ArrayList;)V

    sput-object p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->loader:Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;

    return-void
.end method

.method private createWallpaperForAccent(Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 1251
    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1255
    :cond_0
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 1256
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v3, v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1257
    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$smcheckIsDark(Landroid/util/SparseIntArray;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 1258
    iget v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1260
    iget-wide v7, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v7, v7

    .line 1262
    iget-wide v8, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v10, v8

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-nez v10, :cond_2

    cmp-long v8, v8, v11

    if-nez v8, :cond_2

    if-eqz v7, :cond_1

    move v6, v7

    .line 1267
    :cond_1
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_3

    .line 1269
    invoke-static {v4, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;II)I

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_4

    :cond_2
    move v6, v13

    .line 1275
    :cond_3
    :goto_0
    iget-wide v8, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v14, v8

    if-nez v14, :cond_4

    cmp-long v8, v8, v11

    if-nez v8, :cond_4

    .line 1277
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 1279
    invoke-static {v4, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;II)I

    move-result v14

    .line 1283
    :cond_4
    iget-wide v8, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v15, v8

    if-nez v15, :cond_5

    cmp-long v8, v8, v11

    if-nez v8, :cond_5

    .line 1285
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 1287
    invoke-static {v4, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;II)I

    move-result v15

    :cond_5
    if-nez v7, :cond_6

    .line 1292
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 1294
    invoke-static {v4, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;II)I

    move-result v7

    :cond_6
    if-eqz v14, :cond_7

    .line 1302
    invoke-static {v7, v10, v14, v15}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v4

    goto :goto_1

    :cond_7
    if-eqz v10, :cond_8

    .line 1304
    iget v3, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    invoke-static {v3}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v3

    .line 1305
    new-instance v4, Lorg/telegram/ui/Components/BackgroundGradientDrawable;

    filled-new-array {v7, v10}, [I

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1306
    invoke-static {v7, v10}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v3

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v16

    goto :goto_1

    .line 1308
    :cond_8
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1309
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v4

    :goto_1
    if-nez p1, :cond_a

    .line 1313
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1314
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz p2, :cond_9

    .line 1316
    invoke-static {v0, v5, v6, v13}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 1318
    :cond_9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$smloadScreenSizedBitmap(Ljava/io/FileInputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_a
    move-object/from16 v5, p1

    :goto_3
    const/16 v0, 0x57

    if-eqz v3, :cond_b

    .line 1323
    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1324
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1325
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v3, v13, v13, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1326
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1328
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 1329
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v4, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1330
    iget v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    .line 1331
    invoke-virtual {v7, v5, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1333
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1334
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1336
    :cond_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1337
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1338
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v5

    .line 1341
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private synthetic lambda$checkCurrentWallpaper$2(Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1223
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->checkCurrentWallpaperInternal(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$3(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V
    .locals 10

    .line 1357
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1358
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 1360
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->accents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v2, :cond_1

    .line 1361
    iget-object v7, p1, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->accents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 1362
    iget-object v8, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1363
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v9, "application/x-tgwallpattern"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {p0, v3, v8, v1, v7}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->createWallpaperForAccent(Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v5, :cond_0

    .line 1365
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 1371
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1373
    :cond_2
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->checkCurrentWallpaper(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1171
    instance-of v2, v1, Lorg/telegram/tgnet/Vector;

    if-eqz v2, :cond_c

    .line 1172
    check-cast v1, Lorg/telegram/tgnet/Vector;

    .line 1174
    iget-object v2, v1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_b

    .line 1175
    iget-object v8, v1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1176
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-nez v9, :cond_1

    :cond_0
    move-object/from16 v13, p1

    goto/16 :goto_4

    .line 1179
    :cond_1
    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1180
    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v9, :cond_0

    .line 1181
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v9, v10, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 1184
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v11, v4

    move-object v12, v11

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_9

    move-object/from16 v13, p1

    .line 1185
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 1186
    iget-object v15, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v12, :cond_2

    .line 1188
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :cond_2
    if-nez v11, :cond_6

    .line 1190
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1197
    :cond_3
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 1198
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    if-nez v15, :cond_4

    .line 1199
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    .line 1201
    :cond_4
    iget-object v15, v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    if-nez v15, :cond_5

    .line 1203
    new-instance v15, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    invoke-direct {v15, v4}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;-><init>(Lorg/telegram/ui/ActionBar/Theme-IA;)V

    .line 1204
    iput-object v8, v15, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    .line 1205
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_5
    iget-object v3, v15, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;->accents:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1191
    :cond_6
    :goto_2
    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v4, "application/x-tgwallpattern"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v0, v11, v3, v7, v14}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->createWallpaperForAccent(Landroid/graphics/Bitmap;ZLjava/io/File;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v6, :cond_7

    .line 1193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    :cond_7
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v13, p1

    if-eqz v11, :cond_a

    .line 1212
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1216
    :cond_b
    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->checkCurrentWallpaper(Ljava/util/ArrayList;Z)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/util/ArrayList;)V
    .locals 9

    .line 1144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1145
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 1146
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getPathToWallpaper()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1147
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1148
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 1154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    :cond_1
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1159
    :cond_2
    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return-void

    .line 1164
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getMultiWallPapers;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getMultiWallPapers;-><init>()V

    .line 1165
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

    .line 1166
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;-><init>()V

    .line 1167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputWallPaperSlug;->slug:Ljava/lang/String;

    .line 1168
    iget-object v5, v0, Lorg/telegram/tgnet/tl/TL_account$getMultiWallPapers;->wallpapers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1170
    :cond_5
    iget v1, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->account:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1348
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->watingForLoad:Ljava/util/HashMap;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1351
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1352
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 1353
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;

    if-eqz p1, :cond_2

    .line 1355
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p3, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;Lorg/telegram/ui/ActionBar/Theme$PatternsLoader$LoadingPattern;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 1376
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, v0, :cond_2

    .line 1377
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    .line 1378
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1379
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->checkCurrentWallpaper(Ljava/util/ArrayList;Z)V

    :cond_2
    :goto_0
    return-void
.end method
