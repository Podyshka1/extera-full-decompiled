.class Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1019
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->-$$Nest$fputwindowAnimatorSet(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/animation/AnimatorSet;)V

    .line 1020
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;->this$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1022
    instance-of v1, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1023
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1024
    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->-$$Nest$fputstartAnimationPending(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V

    goto :goto_1

    :cond_0
    move v1, v2

    .line 1026
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1027
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_1

    .line 1028
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1029
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->-$$Nest$fputstartAnimationPending(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 1033
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1035
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 1036
    instance-of v3, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_3

    goto :goto_4

    .line 1039
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
