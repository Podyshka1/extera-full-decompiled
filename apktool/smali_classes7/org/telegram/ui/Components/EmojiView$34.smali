.class Lorg/telegram/ui/Components/EmojiView$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroidx/recyclerview/widget/GridLayoutManager;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 4893
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4915
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchAnimation(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4916
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputsearchAnimation(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 4896
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchAnimation(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4897
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 4898
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4899
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x42300000    # 44.0f

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 4900
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4901
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4902
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchFieldHeight(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4903
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 4904
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v0, v5, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 4907
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$34;->val$layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 4909
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$34;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputsearchAnimation(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V

    :cond_4
    return-void
.end method
