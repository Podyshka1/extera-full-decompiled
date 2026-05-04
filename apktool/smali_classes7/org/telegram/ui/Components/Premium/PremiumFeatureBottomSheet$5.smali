.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IZIZLorg/telegram/ui/PremiumPreviewFragment$SubscriptionTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

.field final synthetic val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;


# direct methods
.method public static synthetic $r8$lambda$EkFIaT7FdICwxg_rpSMJsE_YQcI(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->lambda$checkPage$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Lorg/telegram/ui/Components/BottomPagesView;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPage()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 343
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 344
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;

    .line 346
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->enterAnimationIsRunning:Z

    if-eqz v5, :cond_0

    iget-object v5, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v5, v5, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-nez v5, :cond_3

    .line 347
    :cond_0
    iget v5, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->position:I

    iget v6, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-ne v5, v6, :cond_1

    .line 348
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    mul-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 349
    :cond_1
    iget v4, v4, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    if-ne v5, v4, :cond_2

    .line 350
    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v5, v5, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    goto :goto_1

    .line 352
    :cond_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topHeader:Lorg/telegram/ui/Components/Premium/PagerHeaderView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v4, v5}, Lorg/telegram/ui/Components/Premium/PagerHeaderView;->setOffset(F)V

    .line 356
    :cond_3
    :goto_2
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->topView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    if-eqz v4, :cond_4

    neg-float v4, v3

    .line 357
    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 358
    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 359
    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$ViewPage;->description:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsProgress:F

    .line 363
    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    iget v4, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    const/4 v5, 0x1

    if-le v2, v4, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    iput-boolean v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->containerViewsForward:Z

    if-ltz v4, :cond_7

    .line 364
    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v4, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v2, v2, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->-$$Nest$misFullscreenType(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v0

    .line 365
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    if-ltz v4, :cond_8

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    iget v6, v2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v4, v4, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->-$$Nest$misFullscreenType(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_5

    :cond_8
    move v2, v0

    :goto_5
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput v4, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 368
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    cmpl-float v2, v1, v3

    if-nez v2, :cond_9

    move v1, v4

    :cond_9
    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    .line 369
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    sub-float v1, v4, v1

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 372
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v2, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 375
    iput-boolean v0, v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    goto :goto_6

    .line 377
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    iput v3, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToGradient:F

    .line 378
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->fullscreenNext:Z

    .line 381
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progressToFullscreenView:F

    sub-float/2addr v4, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v1, v4

    .line 382
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->-$$Nest$fgetgradientAlpha(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;)I

    move-result v0

    if-eq v1, v0, :cond_d

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->-$$Nest$fputgradientAlpha(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;I)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 385
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$checkPage$0()V
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->checkTopOffset()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->val$bottomPages:Lorg/telegram/ui/Components/BottomPagesView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BottomPagesView;->setPageOffset(IF)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->selectedPosition:I

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 319
    :goto_0
    iput p1, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->toPosition:I

    .line 320
    iput p2, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->progress:F

    .line 321
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    if-nez v0, :cond_0

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->UpgradedStories:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget v0, v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 333
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->FeaturePreviewGifts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget p1, p1, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;->type:I

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_3

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->TelegramBusiness:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->this$0:Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 339
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$5;->checkPage()V

    return-void
.end method
