.class public Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationParams"
.end annotation


# instance fields
.field public checkPresentFromDelegate:Z

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field public noAnimation:Z

.field public preview:Z

.field public removeLast:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 365
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    return-object p0
.end method

.method public setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 375
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method public setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 360
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    return-object p0
.end method

.method public setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 370
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    return-object p0
.end method

.method public setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 355
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    return-object p0
.end method
