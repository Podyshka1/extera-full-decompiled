.class public abstract Lcom/exteragram/messenger/utils/ui/FontUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANVAS_SIZE:I

.field private static final PAINT:Landroid/graphics/Paint;

.field private static final TEST_TEXT:Ljava/lang/String;

.field private static volatile italicSupported:Ljava/lang/Boolean;

.field public static loadSystemEmojiFailed:Z

.field private static volatile mediumWeightSupported:Ljava/lang/Boolean;

.field private static systemEmojiTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v0, 0x41a00000    # 20.0f

    .line 27
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->CANVAS_SIZE:I

    const/4 v1, 0x0

    .line 29
    sput-boolean v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->loadSystemEmojiFailed:Z

    const/4 v2, 0x0

    .line 30
    sput-object v2, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    .line 31
    sput-object v2, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Lcom/exteragram/messenger/utils/ui/FontUtils;->PAINT:Landroid/graphics/Paint;

    int-to-float v0, v0

    .line 36
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 41
    const-string v0, "en"

    .line 43
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    :goto_0
    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "ko"

    const-string/jumbo v3, "zh"

    invoke-static {v3, v1, v2}, Lcom/exteragram/messenger/utils/ui/FontUtils$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string/jumbo v0, "\u4f60\u597d"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_1
    const-string v1, "ar"

    const-string v2, "fa"

    invoke-static {v1, v2}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const-string/jumbo v0, "\u0645\u0631\u062d\u0628\u0627"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_2
    const-string/jumbo v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    const-string/jumbo v0, "\u05e9\u05dc\u05d5\u05dd"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_3
    const-string/jumbo v1, "th"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    const-string/jumbo v0, "\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e35"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_4
    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    const-string/jumbo v0, "\u0928\u092e\u0938\u094d\u0924\u0947"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 61
    :cond_5
    const-string v1, "be"

    const-string/jumbo v2, "sr"

    const-string/jumbo v3, "ru"

    const-string/jumbo v4, "uk"

    const-string/jumbo v5, "ky"

    invoke-static {v3, v4, v5, v1, v2}, Lcom/exteragram/messenger/utils/ui/FontUtils$$ExternalSyntheticBackport4;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    const-string/jumbo v0, "\u041f\u0440\u0438\u0432\u0435\u0442"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 64
    :cond_6
    const-string v0, "R"

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static getFontFallback()Ljava/io/File;
    .locals 5

    .line 150
    const-string v0, "/system/fonts/NotoColorEmoji.ttf"

    const-string v1, "/system/fonts/AndroidEmoji.ttf"

    const-string v2, "/system/fonts/SamsungColorEmoji.ttf"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 156
    aget-object v2, v0, v1

    .line 157
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji font file fallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFontFromAssets(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 213
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils$$ExternalSyntheticApiModelOutline1;->m()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/exteragram/messenger/utils/ui/FontUtils$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "medium"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2bc

    .line 215
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 217
    :cond_0
    const-string/jumbo v1, "italic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 218
    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 222
    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static getFontFromFontsXml()Ljava/io/File;
    .locals 7

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/system/etc/fonts.xml"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    .line 170
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 172
    const-string v4, "<family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "ignore=\"true\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 174
    :cond_1
    const-string v4, "</family>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    const-string v4, "<font"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 177
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 178
    const-string v6, "<"

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 180
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "emoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emoji font file fonts.xml = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 167
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getFontFromSystemApi()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/exteragram/messenger/utils/ui/FontUtils$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/fonts/Font;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string/jumbo v5, "samsungcoloremoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    :cond_1
    if-nez v2, :cond_0

    .line 137
    const-string v5, "emoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    return-object v2

    .line 144
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getSystemEmojiFontPath()Ljava/io/File;
    .locals 2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 114
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getFontFromSystemApi()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getFontFallback()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 121
    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getFontFromFontsXml()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemEmojiTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 198
    sget-boolean v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->loadSystemEmojiFailed:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->systemEmojiTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FontUtils;->getSystemEmojiFontPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->systemEmojiTypeface:Landroid/graphics/Typeface;

    .line 203
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->systemEmojiTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 204
    sput-boolean v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->loadSystemEmojiFailed:Z

    .line 207
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->systemEmojiTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static isItalicSupported()Z
    .locals 3

    .line 81
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcom/exteragram/messenger/utils/ui/FontUtils;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 84
    const-string/jumbo v1, "sans-serif"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/ui/FontUtils;->testTypeface(Landroid/graphics/Typeface;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "italicSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    :goto_2
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->italicSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMediumWeightSupported()Z
    .locals 3

    .line 69
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/exteragram/messenger/utils/ui/FontUtils;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/utils/ui/FontUtils;->testTypeface(Landroid/graphics/Typeface;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mediumWeightSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 77
    :cond_1
    :goto_2
    sget-object v0, Lcom/exteragram/messenger/utils/ui/FontUtils;->mediumWeightSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static testTypeface(Landroid/graphics/Typeface;)Z
    .locals 8

    .line 93
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 95
    sget v1, Lcom/exteragram/messenger/utils/ui/FontUtils;->CANVAS_SIZE:I

    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    sget-object v4, Lcom/exteragram/messenger/utils/ui/FontUtils;->PAINT:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 98
    sget-object v5, Lcom/exteragram/messenger/utils/ui/FontUtils;->TEST_TEXT:Ljava/lang/String;

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    mul-int/lit8 v6, v1, 0x2

    .line 100
    invoke-static {v6, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float p0, v1

    .line 103
    invoke-virtual {v0, v5, v7, p0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 106
    invoke-static {v2, v3}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    return p0
.end method
