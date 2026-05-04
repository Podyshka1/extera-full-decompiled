.class public Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideWallpaperInfo"
.end annotation


# instance fields
.field public accessHash:J

.field public color:I

.field public dialogId:J

.field public fileName:Ljava/lang/String;

.field public forBoth:Z

.field public gradientColor1:I

.field public gradientColor2:I

.field public gradientColor3:I

.field public intensity:F

.field public isBlurred:Z

.field public isMotion:Z

.field public originalFileName:Ljava/lang/String;

.field public parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field public parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public prevUserWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field public requestIds:Ljava/util/ArrayList;

.field public rotation:I

.field public slug:Ljava/lang/String;

.field public uploadingProgress:F

.field public wallpaperId:J


# direct methods
.method static bridge synthetic -$$Nest$mdelete(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->delete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msave(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->save()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 2065
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 2066
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V
    .locals 5

    .line 2090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2064
    const-string v0, ""

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 2065
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 2066
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    .line 2091
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    .line 2092
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    .line 2093
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    .line 2094
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    .line 2095
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    .line 2096
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    .line 2097
    iget-boolean v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    .line 2098
    iget-boolean v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    .line 2099
    iget v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    iput v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    .line 2100
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2101
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2102
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2104
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object p3

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-direct {p2, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2105
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2106
    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2108
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 2109
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2112
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 2114
    :goto_0
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2115
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    iget-object p3, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 2117
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2118
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->generateWallpaperName(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-direct {p1, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2119
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2121
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 2122
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2125
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    goto :goto_1

    .line 2128
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private delete()V
    .locals 4

    .line 2184
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2185
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "themeconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2186
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2187
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2188
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 3

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    const-string v1, "_owp"

    if-eqz v0, :cond_0

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private save()V
    .locals 6

    .line 2161
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2162
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "themeconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2164
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2165
    const-string/jumbo v3, "wall"

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2166
    const-string v3, "owall"

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2167
    const-string v3, "pColor"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2168
    const-string v3, "pGrColor"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2169
    const-string v3, "pGrColor2"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2170
    const-string v3, "pGrColor3"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2171
    const-string v3, "pGrAngle"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2172
    const-string/jumbo v3, "wallSlug"

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    const-string/jumbo v3, "wBlur"

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2174
    const-string/jumbo v3, "wMotion"

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2175
    const-string v3, "pIntensity"

    iget v4, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2176
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2179
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isColor()Z
    .locals 2

    .line 2137
    const-string v0, "c"

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .line 2133
    const-string v0, "d"

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTheme()Z
    .locals 2

    .line 2141
    const-string/jumbo v0, "t"

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public saveOverrideWallpaper()V
    .locals 2

    .line 2145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->parentAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-ne v0, p0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 2148
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->save()V

    :cond_2
    :goto_0
    return-void
.end method
