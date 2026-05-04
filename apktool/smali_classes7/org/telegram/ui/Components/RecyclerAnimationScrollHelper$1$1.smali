.class Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

.field final synthetic val$incomingViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->val$incomingViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Landroid/view/View;

    .line 263
    instance-of v6, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v6, :cond_2

    .line 264
    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6, v0, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    .line 266
    :cond_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopIgnoringView(Landroid/view/View;)V

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->ignoreView(Landroid/view/View;Z)V

    .line 271
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v3, v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 278
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz p1, :cond_6

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ChildHelper;->getHiddenChildCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 284
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "hidden child count must be 0"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "views count in child helper must be quals views count in recycler view"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_8

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 291
    instance-of v4, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_7

    .line 292
    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    .line 294
    :cond_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->val$incomingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_a

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Landroid/view/View;

    .line 298
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_9

    .line 299
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5, v0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    .line 301
    :cond_9
    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 304
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$finalAnimatableAdapter:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz p1, :cond_b

    .line 305
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationEnd()V

    .line 308
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onEndAnimation()V

    .line 312
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;->this$1:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fputanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroid/animation/ValueAnimator;)V

    return-void
.end method
