.class public interface abstract Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INavigationLayoutDelegate"
.end annotation


# virtual methods
.method public abstract needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
.end method

.method public abstract needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
.end method

.method public abstract needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
.end method

.method public abstract needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
.end method

.method public abstract onMeasureOverride([I)V
.end method

.method public abstract onPreIme()Z
.end method

.method public abstract onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
.end method

.method public abstract onThemeProgress(F)V
.end method
