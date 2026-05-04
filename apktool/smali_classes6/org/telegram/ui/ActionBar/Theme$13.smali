.class Lorg/telegram/ui/ActionBar/Theme$13;
.super Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Landroid/util/SparseIntArray;Ljava/io/File;Ljava/lang/String;IIIZZZZLorg/telegram/tgnet/TLRPC$Document;Z)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10139
    invoke-direct {p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeReady(II)V
    .locals 4

    .line 10142
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-gt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-ne v0, v2, :cond_2

    .line 10145
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
