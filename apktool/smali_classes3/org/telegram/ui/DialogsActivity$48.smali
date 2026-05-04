.class Lorg/telegram/ui/DialogsActivity$48;
.super Lorg/telegram/ui/Components/SearchViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createSearchViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

.field final gradientDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
    .locals 0

    .line 12793
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    .line 12841
    new-instance p2, Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    .line 12842
    new-instance p2, Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;-><init>(I)V

    iput-object p2, p1, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 12846
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12847
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12848
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetADDITIONAL_LIST_HEIGHT_DP(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    int-to-float v2, v2

    .line 12849
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 12850
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 12851
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    .line 12853
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const v4, 0x3f333333    # 0.7f

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setColor(I)V

    .line 12854
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {v2, v1, v0, v1, v1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setInsets(IIII)V

    .line 12855
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12856
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 12859
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v0, v2, :cond_2

    .line 12860
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const v3, 0x3f666666    # 0.9f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->setColor(I)V

    .line 12861
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12862
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->gradientDrawable2:Lorg/telegram/messenger/utils/GradientProtectionDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected includeDownloads()Z
    .locals 1

    .line 12821
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onBackProgress(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPageScrolled(II)V
    .locals 2

    .line 12868
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/SearchViewPager;->onPageScrolled(II)V

    .line 12869
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12870
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 12871
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    :cond_0
    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 1

    .line 12877
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    .line 12878
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12879
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    :cond_0
    return-void
.end method

.method protected onTabPageSelected(I)V
    .locals 1

    .line 12796
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->isDownloadsTab(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->updateSpeedItem(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 12837
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 12838
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 12829
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 12830
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsAndFiltersLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SearchTabsAndFiltersLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12831
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$48;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchTabsAndFiltersLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SearchTabsAndFiltersLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
