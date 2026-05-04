.class public Lorg/telegram/ui/ChatActivity$ThemeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
.implements Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeDelegate"
.end annotation


# instance fields
.field private final actionMatrix:Landroid/graphics/Matrix;

.field private activity:Ljava/lang/ref/WeakReference;

.field private animatingColors:Landroid/util/SparseIntArray;

.field animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private currentAccount:I

.field private currentColor:I

.field private currentColors:Landroid/util/SparseIntArray;

.field private final currentDrawables:Ljava/util/HashMap;

.field private final currentPaints:Ljava/util/HashMap;

.field currentServiceColor:I

.field private dialog_id:J

.field drawSelectedGradient:Z

.field drawServiceGradient:Z

.field final dst:Landroid/graphics/Rect;

.field private isDark:Z

.field private final paint:Landroid/graphics/Paint;

.field private patternAlphaAnimator:Landroid/animation/AnimatorSet;

.field private patternIntensityAnimator:Landroid/animation/ValueAnimator;

.field private serviceBitmap:Landroid/graphics/Bitmap;

.field private serviceBitmapSource:Landroid/graphics/Bitmap;

.field private serviceCanvas:Landroid/graphics/Canvas;

.field private serviceShader:Landroid/graphics/BitmapShader;

.field private serviceShaderSource:Landroid/graphics/BitmapShader;

.field final src:Landroid/graphics/Rect;

.field startServiceBitmap:Landroid/graphics/Bitmap;

.field startServiceButtonColor:I

.field startServiceColor:I

.field startServiceIconColor:I

.field startServiceLinkColor:I

.field startServiceTextColor:I

.field private useSourceShader:Z

.field private wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public static synthetic $r8$lambda$2ozVJbwSQgP2JScaj0VJhsegYj4(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 43051
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wUwj8qaSu6P-f2J_5rrVohKL9U(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ChatActivity;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$2(Lorg/telegram/ui/ChatActivity;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPHLzg2PI2yOQxHWs6uej__6DJc(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$getBackgroundDrawableFromTheme$7(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G8oV8MFXlXY0aUpLT0ok5bJ0g-M(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$getBackgroundDrawableFromTheme$9(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QT7W1p1Fwpq1TkG0H4_d7EI2cMQ(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 43475
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 43476
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$R9MCnpLGg5z9s0axsFAq6IqxH5o(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$3(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ReTnENJWIrXCfaUXo5DPrqQ6tZ0(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$mMGvre1sP8Ham1MWkh-NZNg-uCM()V
    .locals 5

    .line 42733
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLLFAQAN_aJoKXgTJifjMItlYMM(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 43036
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$xlzBSLYhGqpYJ3dlHDMfPJM3BYA(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundDrawable(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatTheme(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDark(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwallpaper(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 5

    .line 42715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    .line 42692
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    .line 42693
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    .line 42695
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    .line 42703
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    .line 43180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    .line 42716
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->activity:Ljava/lang/ref/WeakReference;

    .line 42717
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentAccount:I

    .line 42718
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dialog_id:J

    .line 42720
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    const/4 v0, 0x0

    .line 42722
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable(Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 42723
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/ChatThemeController;->getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 42724
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$23700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v1

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/ChatThemeController;->getDialogWallpaper(J)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 42725
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 42727
    :cond_0
    invoke-direct {p0, v1, p1, v0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V

    goto :goto_0

    .line 42730
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object p1

    if-nez p1, :cond_2

    .line 42731
    invoke-static {v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors(ZZ)V

    return-void

    .line 42733
    :cond_2
    :goto_0
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;
    .locals 12

    .line 43426
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v0, :cond_0

    .line 43427
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 43428
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentAccount:I

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 43429
    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperLink(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 43430
    invoke-static {v0, v1, p1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p1

    .line 43431
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    .line 43432
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x1000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    .line 43434
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v2

    .line 43435
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v3

    .line 43436
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v4

    .line 43437
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v5

    .line 43439
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 43440
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    .line 43441
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmojiAnimatedSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setGiftDrawable(Lorg/telegram/tgnet/TLRPC$Document;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 43442
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 43443
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 43444
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v11

    .line 43445
    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    .line 43447
    new-instance p2, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p1, v9, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperGiftPattern(ILorg/telegram/tgnet/ResultCallback;)V

    .line 43458
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    new-instance v6, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda8;

    move-object v7, p0

    move-object v8, p1

    move-object v10, v1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;I)V

    invoke-virtual {v8, p2, v6}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    return-object v1
.end method

.method private initDrawables()V
    .locals 7

    .line 43096
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawablesMap()Ljava/util/Map;

    move-result-object v0

    .line 43097
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43099
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "drawableMsgOut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "drawableMsgInSelected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "drawableMsgOutMediaSelected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "drawableMsgOutSelected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "drawableMsgOutMedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "drawableMsgInMediaSelected"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "drawableMsgInMedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v6, v4

    goto :goto_1

    :sswitch_7
    const-string v3, "drawableMsgIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v6, v5

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 43125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 43126
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 43128
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_a

    .line 43133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawableColorKey(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    .line 43135
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 43113
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v4, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43104
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v4, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43122
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v4, v4, v4, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43116
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v4, v4, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43119
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v4, v4, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43110
    :pswitch_5
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v4, v5, v4, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43107
    :pswitch_6
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v4, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_3

    .line 43101
    :pswitch_7
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-direct {v2, v5, v5, v5, p0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_a
    :goto_3
    if-eqz v2, :cond_0

    .line 43140
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7adbe978 -> :sswitch_7
        -0x7786c1c4 -> :sswitch_6
        -0x62ba6709 -> :sswitch_5
        -0x56839ba7 -> :sswitch_4
        -0x40a651fa -> :sswitch_3
        -0x7cadec -> :sswitch_2
        0x11e96543 -> :sswitch_1
        0x1f5ed24b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initPaints()V
    .locals 6

    .line 43146
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintsMap()Ljava/util/Map;

    move-result-object v0

    .line 43147
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 43148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 43150
    instance-of v3, v2, Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    .line 43151
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 43152
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43153
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 43155
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 43157
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 43158
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 43161
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaintColorKey(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 43162
    const-string v4, "paintChatActionBackgroundDarken"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 43163
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43165
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 43183
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_0

    .line 43184
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetparentThemeDelegate(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 43186
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 43187
    aget v2, v2, v3

    .line 43189
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(I)I

    move-result v4

    .line 43190
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(I)I

    move-result v6

    if-eqz v4, :cond_2

    .line 43192
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 43195
    :cond_2
    :goto_0
    iput v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 43198
    instance-of v2, v1, Lorg/telegram/ui/ChatBackgroundDrawable;

    if-eqz v2, :cond_3

    .line 43199
    check-cast v1, Lorg/telegram/ui/ChatBackgroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDimAmount()F

    move-result v2

    .line 43200
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->getDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 43202
    :goto_1
    instance-of v7, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v8, 0x1

    if-nez v7, :cond_4

    instance-of v9, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_5

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v9

    if-eqz v9, :cond_5

    move v9, v8

    goto :goto_2

    :cond_5
    move v9, v3

    :goto_2
    iput-boolean v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 43203
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isGiftTheme()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v9, :cond_6

    move v9, v8

    goto :goto_3

    :cond_6
    move v9, v3

    .line 43205
    :goto_3
    iget-boolean v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    iput-boolean v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_d

    .line 43208
    instance-of v10, v1, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v12, 0x21

    const/high16 v14, -0x1000000

    const/4 v15, 0x2

    if-eqz v10, :cond_9

    .line 43209
    move-object v9, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 43211
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/16 v16, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 p1, 0x437f0000    # 255.0f

    const/16 v13, 0x28

    if-le v10, v4, :cond_7

    int-to-float v4, v13

    .line 43213
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    goto :goto_4

    :cond_7
    int-to-float v4, v13

    .line 43216
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v4, v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    float-to-int v4, v4

    move/from16 v23, v13

    move v13, v4

    move/from16 v4, v23

    .line 43218
    :goto_4
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 43219
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    .line 43220
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v4, v3, v3, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 43221
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v4, v3, v3, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 43222
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    invoke-virtual {v4, v9, v10, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43223
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v22

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v22}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 43224
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-static {v14, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43225
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v4, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 43226
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 43227
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    .line 43228
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v12, :cond_8

    .line 43229
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v15}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    .line 43230
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v15}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    .line 43232
    :cond_8
    iput-boolean v8, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    goto/16 :goto_5

    :cond_9
    const/high16 p1, 0x437f0000    # 255.0f

    const/16 v16, 0x0

    const/16 v4, 0x50

    .line 43234
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v13, 0x3c

    invoke-static {v13, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 43235
    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    const v10, -0x33ddddde    # -4.250228E7f

    if-eqz v9, :cond_a

    .line 43238
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 43239
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43240
    invoke-virtual {v4, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43243
    :cond_a
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    .line 43244
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v3, v3, v13, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 43245
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v4, v3, v3, v8, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 43246
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v13, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43247
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-static {v14, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    if-eqz v9, :cond_b

    .line 43249
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43252
    :cond_b
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 43253
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    .line 43254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v12, :cond_c

    .line 43255
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v15}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    .line 43256
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v15}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    :cond_c
    const/4 v2, 0x1

    .line 43258
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    goto :goto_5

    :cond_d
    const/16 v16, 0x0

    .line 43261
    iput-object v11, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    .line 43262
    iput-object v11, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    .line 43263
    iput-object v11, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    .line 43264
    iput-object v11, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    .line 43265
    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 43268
    :goto_5
    const-string v2, "paintChatActionBackground"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 43269
    const-string v3, "paintChatActionBackgroundSelected"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    .line 43270
    const-string v4, "paintChatMessageBackgroundSelected"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v8

    if-eqz v2, :cond_18

    .line 43273
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    const-string v10, "paintChatActionBackgroundDarken"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Paint;

    if-nez v9, :cond_e

    .line 43275
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    .line 43276
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object v9, v12

    .line 43278
    :cond_e
    iget-boolean v10, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v10, :cond_17

    .line 43279
    new-instance v10, Landroid/graphics/ColorMatrix;

    invoke-direct {v10}, Landroid/graphics/ColorMatrix;-><init>()V

    const v12, 0x3f6b851f    # 0.92f

    const v13, 0x3fcccccd    # 1.6f

    if-eqz v7, :cond_14

    .line 43281
    check-cast v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v16

    const v7, -0x428a3d71    # -0.06f

    if-ltz v1, :cond_11

    .line 43283
    invoke-virtual {v10, v13}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 43284
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_f

    const v1, 0x3f7851ec    # 0.97f

    goto :goto_6

    :cond_f
    move v1, v12

    :goto_6
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 43285
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_10

    const v7, 0x3df5c28f    # 0.12f

    :cond_10
    invoke-static {v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto :goto_a

    :cond_11
    const v1, 0x3f8ccccd    # 1.1f

    .line 43287
    invoke-virtual {v10, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 43288
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_12

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_7

    :cond_12
    const v1, 0x3f4ccccd    # 0.8f

    :goto_7
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 43289
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_13

    const v7, 0x3da3d70a    # 0.08f

    :cond_13
    invoke-static {v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    goto :goto_a

    .line 43292
    :cond_14
    invoke-virtual {v10, v13}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 43293
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_15

    const v1, 0x3f666666    # 0.9f

    goto :goto_8

    :cond_15
    const v1, 0x3f570a3d    # 0.84f

    :goto_8
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 43294
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz v1, :cond_16

    const v1, 0x3d23d70a    # 0.04f

    goto :goto_9

    :cond_16
    const v1, 0x3d75c28f    # 0.06f

    :goto_9
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    :goto_a
    const/16 v1, 0xff

    .line 43297
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43298
    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43299
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x1

    .line 43300
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43302
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43303
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v10}, Landroid/graphics/ColorMatrix;-><init>(Landroid/graphics/ColorMatrix;)V

    const v2, 0x3e851eb8    # 0.26f

    .line 43304
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 43305
    invoke-static {v1, v12}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    .line 43306
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43307
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x1

    .line 43308
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v2, 0x0

    .line 43309
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    .line 43311
    :cond_17
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43312
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43313
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43314
    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v1, 0x15

    .line 43315
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_18
    :goto_b
    if-nez v8, :cond_19

    .line 43320
    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 43321
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43323
    :cond_19
    iget-boolean v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawSelectedGradient:Z

    if-eqz v1, :cond_1a

    .line 43324
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v2, 0x40200000    # 2.5f

    .line 43325
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/high16 v2, 0x3f400000    # 0.75f

    .line 43326
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->multiplyBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    const/16 v2, 0x40

    .line 43327
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43328
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43329
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x1

    .line 43330
    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :cond_1a
    if-nez v6, :cond_1b

    .line 43333
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getColor(I)I

    move-result v6

    .line 43335
    :cond_1b
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 43336
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 43337
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private synthetic lambda$getBackgroundDrawableFromTheme$7(Lorg/telegram/ui/Components/MotionBackgroundDrawable;Landroid/util/Pair;)V
    .locals 4

    if-nez p2, :cond_0

    goto :goto_0

    .line 43451
    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 43452
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    .line 43453
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 43454
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setGiftPatternBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getBackgroundDrawableFromTheme$9(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 5

    if-nez p5, :cond_0

    goto :goto_0

    .line 43462
    :cond_0
    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 43463
    iget-object v2, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;

    iget-object v2, v2, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 43464
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeId(I)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 43465
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 43466
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 43468
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 43469
    iget-object p2, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;

    iget-object p2, p2, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->giftPatternPositions:Ljava/util/List;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternGiftPositions(Ljava/util/List;)V

    .line 43470
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetwallpaperRandomSeed()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setGiftPatternRandomSeed(J)V

    .line 43471
    invoke-virtual {p3, p1, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 43472
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    const/4 p1, 0x2

    .line 43473
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    .line 43474
    new-instance p2, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda9;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43478
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43479
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setCurrentTheme$1(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLorg/telegram/ui/ChatActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 42917
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V

    .line 42918
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 42920
    iget-object p1, p4, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz p1, :cond_0

    .line 42921
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBackground()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setCurrentTheme$2(Lorg/telegram/ui/ChatActivity;F)V
    .locals 0

    .line 42926
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 42927
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput p2, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 42928
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput p2, p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 42929
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$3(Lorg/telegram/ui/ChatActivity;)V
    .locals 2

    .line 42932
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    .line 42933
    const-string v0, "drawableMsgOut"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42934
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42935
    const-string v0, "drawableMsgOutMedia"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42936
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42937
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 42938
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    const/4 v0, 0x0

    .line 42939
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatActivity;->updateMessagesVisiblePart(Z)V

    .line 42940
    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private synthetic lambda$setCurrentTheme$4()V
    .locals 2

    .line 42943
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42944
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeFromDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 42945
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42946
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    return-void
.end method

.method private setupChatTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZZ)V
    .locals 11

    .line 42964
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->customThemes:Z

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 42968
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 42969
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetparentThemeDelegate(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 42971
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 42972
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 42975
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 42976
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 42978
    :goto_0
    instance-of v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 42979
    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPhase()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz p1, :cond_5

    .line 42981
    iget-boolean v4, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_6

    :cond_5
    if-nez p2, :cond_6

    .line 42982
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getServiceMessageColor()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColor:I

    .line 42984
    :cond_6
    const-string v4, "lastDarkTheme"

    const-string v5, "lastDayTheme"

    const-string/jumbo v6, "themeconfig"

    const-string v7, "Dark Blue"

    const-string v8, "Blue"

    if-nez p1, :cond_e

    if-nez p2, :cond_e

    .line 42985
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    .line 42986
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 42987
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 42988
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 42989
    instance-of p2, p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz p2, :cond_7

    .line 42990
    check-cast p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 42992
    :cond_7
    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 42995
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p1, p2, :cond_8

    .line 42996
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    .line 42998
    :cond_8
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 42999
    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43000
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_3

    :cond_9
    move-object v8, p2

    .line 43003
    :cond_a
    :goto_3
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43004
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_4

    :cond_b
    move-object v7, p1

    .line 43007
    :cond_c
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p1, :cond_d

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_5

    :cond_d
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 43010
    :goto_5
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    .line 43011
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 43013
    :cond_e
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_f

    .line 43014
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    :cond_f
    if-nez p1, :cond_10

    .line 43017
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    goto :goto_6

    .line 43019
    :cond_10
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentAccount:I

    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-virtual {p1, v1, v9}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createColors(II)Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    .line 43021
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 43022
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p2, v1, v3, v9}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_11
    if-eqz p2, :cond_12

    .line 43024
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {v1, p2, v3}, Lorg/telegram/ui/ChatBackgroundDrawable;->getOrCreate(Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 43026
    :cond_12
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getBackgroundDrawableFromTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 43029
    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_13

    .line 43030
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_13
    if-eqz p3, :cond_16

    .line 43033
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eqz v0, :cond_14

    .line 43035
    new-array v1, p3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 43036
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43037
    new-instance v3, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v9, 0xc8

    .line 43044
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43045
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array v3, p2, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 43047
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_15

    .line 43048
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v1, 0x0

    .line 43049
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    .line 43050
    new-array p3, p3, [F

    fill-array-data p3, :array_1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 43051
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43052
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    invoke-virtual {p3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 43059
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43060
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object p3, p2, v2

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 43062
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->patternAlphaAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_16
    if-nez p1, :cond_1d

    .line 43065
    iget-wide p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dialog_id:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1d

    .line 43067
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p1

    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p1, p2, :cond_17

    .line 43068
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_a

    .line 43070
    :cond_17
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 43071
    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43072
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_8

    :cond_18
    move-object v8, p2

    .line 43075
    :cond_19
    :goto_8
    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43076
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    if-eqz p2, :cond_1b

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_9

    :cond_1a
    move-object v7, p1

    .line 43079
    :cond_1b
    :goto_9
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p1, :cond_1c

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_a

    :cond_1c
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 43082
    :goto_a
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    invoke-static {p1, v2, p2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    :cond_1d
    if-eqz p4, :cond_1e

    .line 43085
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p1

    .line 43086
    aget p1, p1, v2

    iput p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColor:I

    .line 43087
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 43088
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 43089
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43090
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->updateServiceMessageColor(F)V

    :cond_1e
    :goto_b
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateServiceMessageColor(F)V
    .locals 11

    .line 43342
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 43345
    :cond_0
    const-string v0, "paintChatActionBackground"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    .line 43346
    const-string v1, "paintChatActionBackgroundSelected"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v1

    .line 43347
    const-string v2, "paintChatMessageBackgroundSelected"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 43349
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    .line 43350
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v4

    .line 43351
    :goto_0
    iget-boolean v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, v7, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v7

    .line 43352
    :goto_1
    iget-boolean v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, v8, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v8

    .line 43353
    :goto_2
    iget-boolean v9, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v5

    :goto_3
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-eqz v9, :cond_5

    .line 43355
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    invoke-static {v10, v3, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    .line 43356
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    invoke-static {v10, v4, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    .line 43357
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    invoke-static {v10, v7, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    .line 43358
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    invoke-static {v10, v8, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v8

    .line 43359
    iget v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    invoke-static {v10, v5, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    :cond_5
    if-eqz v0, :cond_6

    .line 43361
    iget-boolean v10, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-nez v10, :cond_6

    .line 43362
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43363
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43366
    :cond_6
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColor:I

    .line 43368
    const-string v3, "paintChatActionText"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 43370
    check-cast v10, Landroid/text/TextPaint;

    iput v7, v10, Landroid/text/TextPaint;->linkColor:I

    .line 43371
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 43372
    const-string v3, "paintChatBotButton"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 43375
    :cond_7
    const-string v3, "drawableMsgStickerCheck"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43376
    const-string v3, "drawableMsgStickerClock"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43377
    const-string v3, "drawableMsgStickerHalfCheck"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43378
    const-string v3, "drawableMsgStickerPinned"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43379
    const-string v3, "drawableMsgStickerReplies"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43380
    const-string v3, "drawableMsgStickerViews"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43382
    const-string v3, "drawableBotInline"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43383
    const-string v3, "drawableBotLink"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43384
    const-string v3, "drawableBotLock"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43385
    const-string v3, "drawable_botInvite"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43386
    const-string v3, "drawableCommentSticker"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43387
    const-string v3, "drawableGoIcon"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43388
    const-string v3, "drawableReplyIcon"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43389
    const-string v3, "drawableShareIcon"

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 43391
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_9

    .line 43392
    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 43393
    iput-boolean v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 43394
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 43395
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v3, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 43396
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43397
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43398
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 43399
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 43400
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_8

    .line 43402
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43403
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    if-eqz v2, :cond_b

    .line 43406
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    .line 43409
    :cond_9
    iput-boolean v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    .line 43410
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v5, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 43411
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v5, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 43412
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->src:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->dst:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_a

    .line 43414
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43415
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    if-eqz v2, :cond_b

    .line 43418
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public applyServiceShaderMatrix(IIFF)V
    .locals 10

    .line 42797
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    if-nez v2, :cond_1

    :cond_0
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_0

    .line 42800
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->useSourceShader:Z

    if-eqz v0, :cond_2

    .line 42801
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceBitmapSource:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShaderSource:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    return-void

    :cond_2
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 42803
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->actionMatrix:Landroid/graphics/Matrix;

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(Landroid/graphics/Bitmap;Landroid/graphics/BitmapShader;Landroid/graphics/Matrix;IIFF)V

    return-void

    .line 42798
    :goto_0
    invoke-static {p0, v4, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 2

    .line 42739
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 42740
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 42742
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 42745
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_1

    .line 42746
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 42748
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 42750
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 42753
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getFallbackKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 42755
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 42757
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 42760
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 42765
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p1

    return p1
.end method

.method public getCurrentColor(IZ)I
    .locals 1

    .line 42769
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 42770
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_1

    .line 42773
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_1

    .line 42774
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_1

    .line 42776
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 42779
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_2

    .line 42780
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_2

    .line 42782
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 42785
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 1

    .line 42846
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object v0
.end method

.method public getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 1

    .line 43488
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42825
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentDrawables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 42830
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentPaints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Paint;

    return-object p1
.end method

.method public getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42851
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hasGradientService()Z
    .locals 1

    .line 42820
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->serviceShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v0

    return v0
.end method

.method public synthetic isDark()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$isDark(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public isGiftTheme()Z
    .locals 1

    .line 42814
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42815
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeGift()Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isThemeChangeAvailable(Z)Z
    .locals 3

    .line 42834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42839
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p1, :cond_2

    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public isWallpaperMotion()Z
    .locals 1

    .line 42856
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAnimatedColor(II)V
    .locals 1

    .line 42790
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingColors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 42791
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method public setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 42860
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;Z)V

    return-void
.end method

.method public setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;Z)V
    .locals 10

    .line 42863
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v6, :cond_0

    .line 42864
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$23800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetparentThemeDelegate(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto/16 :goto_f

    :cond_1
    if-eqz p4, :cond_2

    .line 42868
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_1

    :cond_2
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 42869
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeKey()Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    .line 42870
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeKey()Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v0

    .line 42871
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    const/4 v4, 0x0

    if-nez p5, :cond_5

    .line 42872
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isThemeChangeAvailable(Z)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->equals(Lorg/telegram/ui/ActionBar/theme/ThemeKey;Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Z

    move-result p5

    if-eqz p5, :cond_5

    iget-boolean p5, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-ne p5, p4, :cond_5

    invoke-static {p2, v3}, Lorg/telegram/messenger/ChatThemeController;->equals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_0

    .line 42876
    :cond_5
    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p4, :cond_6

    .line 42878
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p4

    goto :goto_4

    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p4

    .line 42879
    :goto_4
    new-instance p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget v1, p4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    xor-int/lit8 v3, p3, 0x1

    invoke-direct {p5, p4, v1, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    .line 42881
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, -0x1

    if-nez p4, :cond_b

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez p4, :cond_b

    .line 42882
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 42883
    instance-of v2, p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    .line 42884
    invoke-direct {p0, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 42885
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_7

    move p4, v1

    goto :goto_5

    :cond_7
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_5
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 42886
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_8

    move p4, v1

    goto :goto_6

    :cond_8
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_6
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 42887
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_9

    move p4, v1

    goto :goto_7

    :cond_9
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_7
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 42888
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_a

    move p4, v1

    goto :goto_8

    :cond_a
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    :goto_8
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    goto :goto_9

    .line 42889
    :cond_b
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_c

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_c

    .line 42890
    check-cast p4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    .line 42891
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isGiftTheme()Z

    move-result p4

    if-eqz p4, :cond_d

    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->isDark:Z

    if-eqz p4, :cond_d

    .line 42893
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    invoke-static {p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    .line 42894
    new-instance p4, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, -0x33ddddde    # -4.250228E7f

    .line 42895
    invoke-virtual {p4, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_9

    .line 42897
    :cond_c
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_d

    .line 42898
    invoke-direct {p0, p4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initServiceMessageColors(Landroid/graphics/drawable/Drawable;)V

    .line 42900
    :cond_d
    :goto_9
    iget p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentServiceColor:I

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceColor:I

    .line 42901
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    const/4 v7, 0x1

    if-eqz p4, :cond_e

    move p4, v1

    goto :goto_a

    :cond_e
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-virtual {p0, p4, v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_a
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceTextColor:I

    .line 42902
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_f

    move p4, v1

    goto :goto_b

    :cond_f
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, p4, v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_b
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceLinkColor:I

    .line 42903
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_10

    move p4, v1

    goto :goto_c

    :cond_10
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    invoke-virtual {p0, p4, v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result p4

    :goto_c
    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceButtonColor:I

    .line 42904
    iget-boolean p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->drawServiceGradient:Z

    if-eqz p4, :cond_11

    goto :goto_d

    :cond_11
    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    invoke-virtual {p0, p4, v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentColor(IZ)I

    move-result v1

    :goto_d
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->startServiceIconColor:I

    if-nez p1, :cond_12

    if-eqz p2, :cond_13

    .line 42907
    :cond_12
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->calcDrawableColor(Landroid/graphics/drawable/Drawable;)[I

    move-result-object p4

    .line 42908
    aget p4, p4, v4

    iput p4, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->currentColor:I

    .line 42909
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initDrawables()V

    .line 42910
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->initPaints()V

    .line 42913
    :cond_13
    iput-boolean v4, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    .line 42914
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long p4, v1, v8

    if-gez p4, :cond_14

    .line 42915
    iput-boolean v4, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTrulyTheme:Z

    .line 42916
    :cond_14
    new-instance v1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLorg/telegram/ui/ChatActivity;)V

    iput-object v1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_15

    .line 42925
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ChatActivity;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 42931
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ChatActivity;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    .line 42942
    new-instance p1, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V

    iput-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_e

    .line 42949
    :cond_15
    iget-object p1, v6, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz p1, :cond_16

    .line 42950
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateBackground(Lorg/telegram/ui/ChatActivity;)V

    .line 42952
    :cond_16
    iget-object p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 42954
    :goto_e
    iput-boolean v7, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    .line 42955
    iput-object v2, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-wide/16 p1, 0xfa

    .line 42956
    iput-wide p1, p5, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    .line 42957
    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, p5, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    .line 42958
    iget-object p1, v6, Lorg/telegram/ui/ChatActivity;->onThemeChange:Ljava/lang/Runnable;

    if-eqz p1, :cond_17

    .line 42959
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    :goto_f
    return-void
.end method
