.class public abstract synthetic Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$needAddFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 322
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 318
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 2

    .line 311
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    invoke-interface {p0, v0, v1, p2, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p0

    return p0
.end method

.method public static $default$onMeasureOverride(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;[I)V
    .locals 0

    .line 333
    return-void
.end method

.method public static $default$onPreIme(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)Z
    .locals 0

    .line 326
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 0

    .line 334
    return-void
.end method

.method public static $default$onThemeProgress(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;F)V
    .locals 0

    .line 335
    return-void
.end method
