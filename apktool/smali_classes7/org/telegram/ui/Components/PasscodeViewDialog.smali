.class public Lorg/telegram/ui/Components/PasscodeViewDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public final passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private final windowView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->windowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 43
    new-instance v1, Lorg/telegram/ui/Components/PasscodeViewDialog$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeViewDialog$1;-><init>(Lorg/telegram/ui/Components/PasscodeViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 56
    new-instance v1, Lorg/telegram/ui/Components/PasscodeViewDialog$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/PasscodeViewDialog$2;-><init>(Lorg/telegram/ui/Components/PasscodeViewDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    const/4 p1, -0x1

    const/16 v2, 0x77

    .line 77
    invoke-static {p1, p1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$001(Lorg/telegram/ui/Components/PasscodeViewDialog;)V
    .locals 0

    .line 29
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PasscodeView;->onBackPressed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 140
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_0
    return v0

    .line 146
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 85
    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->windowView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 89
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x77

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 93
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x10

    .line 94
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 96
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v2, :cond_0

    or-int/lit16 v1, v1, 0x2000

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 98
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->logFlagSecure()V

    .line 100
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 101
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x77fefa80

    or-int/2addr v2, v3

    .line 107
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    .line 109
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 111
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeViewDialog;->windowView:Landroid/widget/FrameLayout;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p1, 0x0

    .line 115
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    return-void
.end method
