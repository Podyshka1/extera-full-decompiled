.class public Lorg/telegram/ui/ActionBar/BottomSheetTabs;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;
    }
.end annotation


# static fields
.field public static final tabDrawables:Ljava/util/HashMap;

.field public static final tabs:Ljava/util/HashMap;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private final actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundColor:I

.field private backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bottomTabsAnimator:Landroid/animation/ValueAnimator;

.field public bottomTabsHeight:I

.field public bottomTabsProgress:F

.field private closeRippleHit:Z

.field public currentAccount:I

.field public doNotDismiss:Z

.field public drawTabs:Z

.field private hit:Z

.field private final invalidateListeners:Ljava/util/HashSet;

.field private final rect:Landroid/graphics/RectF;

.field private final relayoutListeners:Ljava/util/HashSet;

.field private tabColor:I

.field private tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private tabIsDark:Z


# direct methods
.method public static synthetic $r8$lambda$6r2txJ0Yr4DK9EpwLcLpfe0Mu_M(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$DHX3tDYOdbiroYGzmt96_44TTqk(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$5(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDhLOI7PODyeb3ZJQKyTx3hphBA(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$updateVisibility$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YlC0jcJtF6j5q-66U5tcU_4s1F8(Lorg/telegram/ui/ActionBar/BottomSheetTabs;[ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$2([ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPNRf9BTF_xqb6Li3oucaooqE3E(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$openTab$0(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiJ7BtkC4NyWansFr7HjxaornNg(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$openTab$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kds1RKsT7D42Om7XAx69ikKtHJA([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 457
    aput-boolean p3, p0, p4

    .line 458
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 459
    aget-object p0, p2, p4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$wY--mzJHTOpTZmii2flzYplpdWs([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 463
    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    .line 464
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 465
    aput-boolean p1, p0, p2

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbottomTabsAnimator(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidateListeners(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 0
    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDrawables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 8

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    .line 67
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    .line 236
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v2, v1

    iput-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 238
    new-instance v1, Lorg/telegram/ui/Components/AnimatedColor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 240
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 264
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    .line 576
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    .line 1026
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    .line 1027
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    .line 74
    iput-object p2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 76
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setNavigationBarColor(I)V

    .line 78
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    .line 79
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    return-void
.end method

.method private static getTextPaint()Landroid/text/TextPaint;
    .locals 2

    .line 360
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    .line 362
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 363
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 365
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method private synthetic lambda$openTab$0(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    if-nez p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 109
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    .line 112
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 117
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setParentActivity(Landroid/app/Activity;)V

    .line 118
    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->restoreState(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    .line 120
    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$openTab$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    return-void
.end method

.method private synthetic lambda$removeTab$2([ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p5, 0x0

    const/4 p6, 0x1

    .line 451
    aput-boolean p6, p1, p5

    .line 452
    invoke-virtual {p0, p2, p6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    .line 453
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 454
    aget-object p1, p4, p5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$removeTab$5(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 2

    const/4 v0, 0x0

    .line 496
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 497
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 498
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v1, p2, :cond_0

    .line 499
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateVisibility$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 954
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 956
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateMultipleTitle()V
    .locals 9

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    .line 373
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_1

    .line 374
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_0

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->-$$Nest$fgetposition(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)I

    move-result v6

    if-nez v6, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    iget-object v8, v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->getTitle()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v3

    const-string v8, "BotMoreTabs"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 378
    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 379
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setOverrideTitle(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v5, v6

    goto :goto_2

    .line 381
    :cond_0
    iget-object v6, v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 383
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setOverrideTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 388
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 389
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrTabs:I

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 391
    :cond_2
    invoke-virtual {p0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 392
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrTabs:I

    if-nez v5, :cond_3

    move-object v5, v1

    :cond_3
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x23

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public click()V
    .locals 4

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 564
    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 566
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->stopAnimations()V

    :cond_2
    if-eq v1, v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openTabsView()V

    return-void

    .line 570
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-void
.end method

.method public closeAttachedSheets()Z
    .locals 4

    .line 218
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    .line 219
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    .line 221
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 222
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 580
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    .line 583
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 587
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 588
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v8, v2

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 589
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v2

    .line 592
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    .line 593
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move v6, v5

    .line 594
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 595
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 596
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v7

    .line 597
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getAlpha()F

    move-result v14

    cmpg-float v8, v14, v3

    if-gtz v8, :cond_1

    goto :goto_2

    :cond_1
    const v8, 0x3ffeb852    # 1.99f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    goto :goto_2

    .line 602
    :cond_2
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v8, v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    .line 603
    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v7, v5

    .line 604
    :goto_1
    invoke-virtual {v10, v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setBackgroundColor(IZ)V

    .line 605
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v13, v7

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public findTabDrawable(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;
    .locals 3

    .line 317
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 320
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v2, p1, :cond_0

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpandedHeight()I
    .locals 2

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    .line 290
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x42880000    # 68.0f

    .line 292
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1020
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    float-to-int p1, p1

    return p1

    .line 1022
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    return p1
.end method

.method public getTabBounds(Landroid/graphics/RectF;F)V
    .locals 6

    const/high16 v0, 0x40800000    # 4.0f

    .line 618
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 619
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    const v0, 0x3f733333    # 0.95f

    .line 620
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    .line 621
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    mul-float/2addr v2, p2

    sub-float v5, v0, v2

    .line 622
    iput v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    .line 623
    iput v0, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    sub-float p2, v1, v3

    .line 624
    iput p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    .line 625
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getTabDrawables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;",
            ">;"
        }
    .end annotation

    .line 301
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTabDrawables(I)Ljava/util/ArrayList;
    .locals 2

    .line 311
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;",
            ">;"
        }
    .end annotation

    .line 297
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTabs(I)Ljava/util/ArrayList;
    .locals 2

    .line 305
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public listen(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->touchEvent(IFF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 6

    .line 83
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 85
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 86
    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 88
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    .line 91
    :cond_1
    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v4, :cond_2

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment()Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v0

    .line 93
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    .line 94
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->checkSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    .line 95
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->addSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 96
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$Sheet;->reset()V

    .line 97
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 98
    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 99
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateOpen(ZZLjava/lang/Runnable;)V

    .line 100
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    return-void

    .line 103
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeAttachedSheets()Z

    .line 104
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    .line 133
    invoke-interface {v2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 134
    iget-boolean v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v4, v4, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 135
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    .line 136
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v1, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    .line 137
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 v2, 0xdc

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pushTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;
    .locals 6

    .line 328
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    .line 331
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    .line 332
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 333
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 334
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 336
    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 337
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_1

    .line 338
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 339
    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 340
    iput v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v4, :cond_0

    .line 342
    invoke-static {p1, v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->-$$Nest$fputposition(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    .line 347
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object v2
.end method

.method public removeAll()Z
    .locals 5

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 400
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 401
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 405
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const/4 v4, -0x1

    .line 406
    iput v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 408
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 411
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 9

    if-nez p1, :cond_0

    .line 430
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 433
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 434
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    .line 435
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 440
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget v0, v0, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 445
    :goto_0
    new-array v4, v1, [Z

    const/4 v8, 0x0

    aput-boolean v8, v4, v8

    .line 446
    new-array v7, v1, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 447
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 449
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 450
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;[ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 456
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda5;

    invoke-direct {v0, v4, v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda5;-><init>([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    aput-object p1, v7, v8

    .line 462
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda6;

    invoke-direct {p2, v4, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda6;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 468
    aget-object p1, v7, v8

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 469
    aget-object p1, v7, v8

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 470
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z
    .locals 3

    .line 478
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 479
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 481
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 483
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    :cond_0
    const/4 p3, 0x0

    .line 485
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 486
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    .line 487
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 488
    iput v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v2, :cond_1

    .line 490
    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->-$$Nest$fputposition(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;I)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 493
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    .line 495
    new-instance p3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    const-wide/16 p1, 0x140

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 505
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z
    .locals 1

    .line 474
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    move-result p1

    return p1
.end method

.method public setCurrentAccount(I)V
    .locals 1

    .line 273
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    if-eq v0, p1, :cond_0

    .line 274
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setNavigationBarColor(IZ)V

    return-void
.end method

.method public setNavigationBarColor(IZ)V
    .locals 5

    .line 247
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    if-eq p1, v0, :cond_6

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    move p2, v2

    .line 251
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    .line 252
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v1

    const/4 v3, 0x1

    if-gez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f400000    # 0.75f

    :goto_1
    const/4 v4, -0x1

    .line 253
    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    .line 254
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    if-nez p2, :cond_5

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 260
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V
    .locals 3

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/4 v2, 0x0

    .line 613
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 614
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setBackgroundColor(IZ)V

    return-void
.end method

.method public stopListening(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1034
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public touchEvent(IFF)Z
    .locals 7

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    .line 522
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 524
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->findTabDrawable(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 527
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    const/4 v5, 0x2

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eq p1, v3, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 533
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    if-eqz p2, :cond_3

    if-ne p1, v3, :cond_3

    .line 534
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->click()V

    goto :goto_1

    .line 535
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p2, :cond_4

    if-ne p1, v3, :cond_4

    .line 536
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 538
    :cond_4
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    .line 539
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    .line 540
    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array p2, v4, [I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    .line 529
    :cond_5
    :goto_2
    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, p2, v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, p3, v0

    float-to-int v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-nez p1, :cond_6

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v4

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    .line 531
    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p2, :cond_7

    new-array p2, v5, [I

    const p3, 0x10100a7

    aput p3, p2, v4

    const p3, 0x101009e

    aput p3, p2, v3

    goto :goto_4

    :cond_7
    new-array p2, v4, [I

    :goto_4
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    :goto_5
    move p1, v4

    .line 542
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_c

    .line 543
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v2, :cond_9

    .line 544
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array p3, v4, [I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 548
    :cond_a
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    .line 549
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    goto :goto_7

    .line 552
    :cond_b
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    .line 553
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    .line 555
    :cond_c
    :goto_7
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    return v4

    :cond_e
    :goto_8
    return v3
.end method

.method public tryRemoveTabWith(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 415
    :goto_0
    sget-object v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 419
    iget-object v6, v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-ne v6, p1, :cond_0

    const/4 p1, 0x1

    .line 420
    invoke-virtual {p0, v1, v5, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public tryReopenTab(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 7

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 169
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 171
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 173
    instance-of v6, v5, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v6, :cond_3

    .line 174
    check-cast v5, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    .line 175
    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez v5, :cond_1

    .line 176
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz v6, :cond_1

    aget-object v6, v6, v2

    if-eqz v6, :cond_1

    .line 177
    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_3

    .line 179
    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getOpenURL()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 210
    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p1, :cond_1

    return-object v0

    .line 211
    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez p1, :cond_2

    return-object v0

    .line 212
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez p1, :cond_3

    return-object v0

    .line 213
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object p1

    return-object p1
.end method

.method public tryReopenTab(Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 192
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 194
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 196
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v5, :cond_1

    .line 197
    check-cast v4, Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 198
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 199
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public tryReopenTab(Lorg/telegram/ui/bots/WebViewRequestProps;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 5

    .line 145
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 146
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 150
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    .line 151
    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/bots/WebViewRequestProps;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public updateCurrentAccount()V
    .locals 1

    .line 269
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setCurrentAccount(I)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 3

    .line 941
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getExpandedHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 943
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 945
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    .line 946
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 948
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getExpandedHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 950
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 952
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    .line 953
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 959
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 969
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 970
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 971
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 973
    :cond_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    .line 974
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 977
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 978
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_4

    .line 979
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
