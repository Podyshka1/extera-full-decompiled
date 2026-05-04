.class public Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUseDynamicGroup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method private ensureRouteSelector()V
    .locals 2

    .line 67
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 72
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 63
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v0, :cond_1

    .line 165
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->updateLayout()V

    return-void

    .line 167
    :cond_1
    check-cast p1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->updateLayout()V

    return-void
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;
    .locals 0

    .line 142
    new-instance p2, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-direct {p2, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 148
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 150
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/mediarouter/app/MediaRouteChooserDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 153
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->getRouteSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 155
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateDynamicChooserDialog(Landroid/content/Context;)Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
    .locals 1

    .line 130
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 103
    invoke-direct {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    .line 104
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    :cond_0
    const-string v1, "selector"

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 115
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    return-void

    .line 118
    :cond_1
    check-cast v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_2
    return-void

    .line 100
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setUseDynamicGroup(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 89
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This must be called before creating dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
