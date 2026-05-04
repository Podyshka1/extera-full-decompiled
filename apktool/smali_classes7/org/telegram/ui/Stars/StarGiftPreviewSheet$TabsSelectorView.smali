.class Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;
.super Lorg/telegram/ui/Components/glass/GlassTabsView;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftPreviewSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabsSelectorView"
.end annotation


# instance fields
.field public final animator:Lme/vkryl/android/animator/FactorAnimator;

.field public final onTabSelectListener:Lorg/telegram/messenger/Utilities$Callback;

.field private selectedTab:I

.field private tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;


# direct methods
.method public static synthetic $r8$lambda$8wa9LEvj7uJYQm5oIHXqt_xSHOo(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->lambda$new$0(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectTab(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->selectTab(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 929
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/glass/GlassTabsView;-><init>(Landroid/content/Context;)V

    .line 923
    new-instance v0, Lme/vkryl/android/animator/FactorAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x640

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/FactorAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->animator:Lme/vkryl/android/animator/FactorAnimator;

    .line 931
    iput-object p3, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->onTabSelectListener:Lorg/telegram/messenger/Utilities$Callback;

    .line 933
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    .line 934
    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const v1, 0x3dc0c0c1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    .line 935
    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    const v1, 0x3e008081

    invoke-static {p3, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    .line 933
    invoke-virtual {p0, v0, p3}, Lorg/telegram/ui/Components/glass/GlassTabsView;->setLensColor(II)V

    .line 938
    sget-object p3, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->MODELS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v0, Lorg/telegram/messenger/R$string;->GiftPreviewModels:I

    .line 939
    invoke-static {p1, p2, p3, v0}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object p3

    sget-object v0, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->COLORS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPreviewBackdrops:I

    .line 940
    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;->SYMBOLS:Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;

    sget v3, Lorg/telegram/messenger/R$string;->GiftPreviewSymbols:I

    .line 941
    invoke-static {p1, p2, v1, v3}, Lorg/telegram/ui/Components/glass/GlassTabView;->createMainTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/glass/GlassTabView$TabAnimation;I)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v1, 0x0

    aput-object p3, p2, v1

    const/4 p3, 0x1

    aput-object v0, p2, p3

    const/4 v0, 0x2

    aput-object p1, p2, v0

    iput-object p2, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    move p1, v1

    .line 944
    :goto_0
    iget-object p2, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 946
    iget-object v0, v2, Lorg/telegram/ui/Components/glass/GlassTabsView;->linearLayout:Landroid/widget/LinearLayout;

    aget-object p2, p2, p1

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    iget-object p2, v2, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object p2, p2, p1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 950
    :cond_0
    aget-object p1, p2, v1

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;)V
    .locals 0

    .line 947
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->selectTab(I)V

    return-void
.end method

.method private selectTab(I)V
    .locals 3

    .line 955
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->selectedTab:I

    if-eq v0, p1, :cond_0

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->tabs:[Lorg/telegram/ui/Components/glass/GlassTabView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    .line 959
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->selectedTab:I

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->animator:Lme/vkryl/android/animator/FactorAnimator;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lme/vkryl/android/animator/FactorAnimator;->animateTo(F)V

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->onTabSelectListener:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateLens()V
    .locals 8

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->animator:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 971
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float v5, v0, v4

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 972
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v0, v6

    div-float/2addr v7, v4

    invoke-static {v3, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    float-to-int v2, v2

    .line 974
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v5, v1

    invoke-virtual {p0, v2, v4, v3, v5}, Lorg/telegram/ui/Components/glass/GlassTabsView;->setLensBounds(IIII)V

    sub-float/2addr v0, v6

    .line 976
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v6, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v0, v6

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    return-void
.end method


# virtual methods
.method public getSelectedTab()I
    .locals 1

    .line 966
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->selectedTab:I

    return v0
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 990
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->updateLens()V

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 984
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 985
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$TabsSelectorView;->updateLens()V

    return-void
.end method
