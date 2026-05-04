.class Lorg/telegram/ui/Components/Bulletin$1;
.super Lorg/telegram/ui/Components/Bulletin$ParentLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Bulletin;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Bulletin;

.field final synthetic val$containerLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Bulletin;Lorg/telegram/ui/Components/Bulletin$Layout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$1;->this$0:Lorg/telegram/ui/Components/Bulletin;

    iput-object p3, p0, Lorg/telegram/ui/Components/Bulletin$1;->val$containerLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Bulletin$ParentLayout;-><init>(Lorg/telegram/ui/Components/Bulletin$Layout;)V

    return-void
.end method


# virtual methods
.method protected onHide()V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$1;->this$0:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    return-void
.end method

.method protected onPressedStateChanged(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$1;->this$0:Lorg/telegram/ui/Components/Bulletin;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setCanHide(Z)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$1;->val$containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$1;->val$containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
