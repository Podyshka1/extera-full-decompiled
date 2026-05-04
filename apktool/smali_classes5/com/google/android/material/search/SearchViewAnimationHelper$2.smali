.class Lcom/google/android/material/search/SearchViewAnimationHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/animation/AnimationCoordinator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchViewAnimationHelper;->startHideAnimationCollapse()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput-boolean p2, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsEnd()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->val$show:Z

    invoke-interface {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->onAnimationEnd(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$400(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method

.method public onAnimationsStart()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$200(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->val$show:Z

    invoke-interface {v0, v1}, Lcom/google/android/material/search/SearchViewAnimationHelper$AnimationDelegate;->onAnimationStart(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->access$300(Lcom/google/android/material/search/SearchViewAnimationHelper;)Lcom/google/android/material/search/SearchView;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;)V

    return-void
.end method
