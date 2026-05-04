.class public Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;
.super Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;
    }
.end annotation


# static fields
.field private static final lastKnownCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private static lastKnownProgress:F


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final layout:Landroid/widget/LinearLayout;

.field private final progressDrawable:Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;

.field private final textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$22YZIGmj4Zq2xlQWgaxVRGBs_3o(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lambda$onUpdateData$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$4wWX0oSfWJvekLb_hgjDCzPff4U(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;

    invoke-direct {v0}, Lcom/exteragram/messenger/pillstack/ui/PillStackPreferencesActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$5VmvcBwn7Elt7GkAPMFkaRaGbxM(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lambda$onPillLongClicked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$IwzvDTgKtVDincy6f-355PNJhSY(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->openCacheSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$KNdhRJhgF5ziU8G07PQ2lgZNtcw(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lambda$onUpdateData$0(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8qz1Zvj3zmPaACuwccOnNsfqlY(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lambda$onUpdateData$1(Ljava/lang/Long;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, -0x40800000    # -1.0f

    .line 65
    sput v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 70
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 72
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 73
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 74
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x10

    or-int/2addr v1, v2

    const/4 v3, -0x2

    const/16 v4, 0x1c

    invoke-static {v3, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->iconView:Landroid/widget/ImageView;

    .line 78
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 79
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v4, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;

    invoke-direct {v4, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->progressDrawable:Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;

    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    new-instance v4, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v4, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p1, 0x41500000    # 13.0f

    .line 84
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 85
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setIncludeFontPadding(Z)V

    .line 87
    iput-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 88
    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->setLoadingTargetView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->updateColors()V

    .line 92
    invoke-static {p2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 94
    sget-object p1, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long p2, v2, v5

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->isRefreshDue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    sget v1, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownProgress:F

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->setData(JFZ)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 97
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onPillLongClicked$3()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->onUpdateData(Z)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$0(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    .line 127
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float p3, v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p2, v0

    div-float/2addr p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 130
    :goto_0
    sput p3, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownProgress:F

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->setData(JFZ)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$1(Ljava/lang/Long;)V
    .locals 3

    .line 123
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 125
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;Ljava/lang/Long;)V

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->getDeviceTotalSize(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method private synthetic lambda$onUpdateData$2()V
    .locals 1

    .line 122
    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private openCacheSettings()V
    .locals 2

    .line 202
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private setData(JFZ)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->stopLoading()V

    .line 142
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 143
    iget-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->animateSizeChange()V

    .line 146
    :cond_1
    iget-object p2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1, p4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 147
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->progressDrawable:Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;

    invoke-virtual {p1, p3, p4}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;->setProgress(FZ)V

    .line 149
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->iconView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->markDataUpdated()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 170
    sget p2, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    if-ne p1, p2, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->getPillId()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p3, p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->shouldUpdatePill([Ljava/lang/Object;[I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->getPillId()I

    move-result p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->checkAndClearPendingUpdate(I)Z

    const/4 p1, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->onUpdateData(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPillId()I
    .locals 1

    .line 109
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget v0, v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onAttachedToWindow()V

    .line 157
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->getPillId()I

    move-result v0

    invoke-static {v0}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->checkAndClearPendingUpdate(I)Z

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->onUpdateData(Z)V

    .line 159
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->onDetachedFromWindow()V

    .line 165
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pillStackSettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onPillClicked()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->openCacheSettings()V

    return-void
.end method

.method public onPillLongClicked()Z
    .locals 6

    .line 186
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {v0, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    sget v4, Lorg/telegram/messenger/R$string;->StorageUsage:I

    .line 189
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v4, Lorg/telegram/messenger/R$string;->Refresh:I

    .line 191
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v4, Lorg/telegram/messenger/R$string;->Settings:I

    .line 192
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onUpdateData(Z)V
    .locals 4

    .line 114
    sget-object v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->lastKnownCacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->isRefreshDue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    .line 117
    :cond_3
    invoke-static {}, Lorg/telegram/ui/CacheControlActivity;->resetCalculatedTotalSIze()V

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->startLoading()V

    .line 121
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 210
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(IF)I

    move-result v0

    .line 211
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->getThemedColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x3db851ec    # 0.09f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->layout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-static {v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 214
    iget-object v1, p0, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill;->progressDrawable:Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/pillstack/ui/pills/system/CachePill$StorageProgressDrawable;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/exteragram/messenger/pillstack/ui/pills/BasePill;->updateLoadingColors()V

    return-void
.end method
