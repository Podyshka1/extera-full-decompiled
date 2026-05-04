.class public Lorg/telegram/ui/Components/Premium/boosts/DarkFragmentWrapper;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/DarkFragmentWrapper;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/DarkFragmentWrapper;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 2

    .line 30
    new-instance v0, Lorg/telegram/ui/WrappedResourceProvider;

    new-instance v1, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/ui/WrappedResourceProvider;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
