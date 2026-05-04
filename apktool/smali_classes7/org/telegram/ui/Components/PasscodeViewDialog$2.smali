.class Lorg/telegram/ui/Components/PasscodeViewDialog$2;
.super Lorg/telegram/ui/Components/PasscodeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeViewDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeViewDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeViewDialog;Landroid/content/Context;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeViewDialog$2;->this$0:Lorg/telegram/ui/Components/PasscodeViewDialog;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAnimationUpdate(F)V
    .locals 4

    .line 71
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3fa00000    # 1.25f

    .line 73
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 74
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected onHidden()V
    .locals 2

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeViewDialog$2;->this$0:Lorg/telegram/ui/Components/PasscodeViewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeViewDialog;->access$001(Lorg/telegram/ui/Components/PasscodeViewDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
