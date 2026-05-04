.class final Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmptyFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;->this$0:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;-><init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 182
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;->this$0:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
