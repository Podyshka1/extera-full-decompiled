.class public abstract synthetic Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$addFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    const/4 v0, -0x1

    .line 246
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    move-result p0

    return p0
.end method

.method public static $default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V
    .locals 1

    .line 183
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V
    .locals 1

    .line 187
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    invoke-interface {p0, v0, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 219
    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return-void
.end method

.method public static $default$dismissDialogs(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 1

    .line 282
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    .line 283
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 285
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    :cond_0
    return-void
.end method

.method public static $default$findFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Ljava/lang/Class;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 4

    .line 171
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 172
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 173
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isRemovingFromStack()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static $default$getBackgroundFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 151
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static $default$getBottomSheet(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 297
    const/4 p0, 0x0

    return-object p0
.end method

.method public static $default$getParentActivity(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/app/Activity;
    .locals 1

    .line 204
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 205
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 206
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NavigationLayout added in non-activity context!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $default$getSafeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 4

    .line 159
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 160
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 162
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isRemovingFromStack()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static $default$getView(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/view/ViewGroup;
    .locals 1

    .line 212
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 213
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You should override getView() if you\'re not inheriting from it."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static $default$hasIntegratedBlurInPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 106
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isActionBarInCrossfade(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 102
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 250
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 1

    .line 254
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z
    .locals 1

    .line 270
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1

    .line 278
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 258
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1

    .line 262
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p0

    return p0
.end method

.method public static $default$rebuildFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    return-void

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-interface {p0, v0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    return-void
.end method

.method public static $default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 239
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static $default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public static newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 86
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static newLayout(Landroid/content/Context;ZLandroidx/core/util/Supplier;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 90
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$1;-><init>(Landroid/content/Context;ZLandroidx/core/util/Supplier;)V

    return-object v0
.end method
