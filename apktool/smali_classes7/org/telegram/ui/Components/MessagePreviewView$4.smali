.class Lorg/telegram/ui/Components/MessagePreviewView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field final synthetic val$canShowKeyboard:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V
    .locals 0

    .line 1913
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->val$canShowKeyboard:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1920
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$4;->val$canShowKeyboard:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->onFullDismiss(Z)V

    return-void
.end method
