.class Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startChildAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic val$child:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->-$$Nest$fgetitemAnimators(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;->val$child:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 427
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->onItemShown()V

    :cond_0
    return-void
.end method
