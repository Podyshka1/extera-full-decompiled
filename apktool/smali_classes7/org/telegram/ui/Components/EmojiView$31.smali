.class Lorg/telegram/ui/Components/EmojiView$31;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->openSearch(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final synthetic val$gridView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 4692
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 4710
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchAnimation(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4711
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputsearchAnimation(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 4695
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchAnimation(Lorg/telegram/ui/Components/EmojiView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4696
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4697
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 4698
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4699
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4700
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v3

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4701
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 4702
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->val$gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetsearchFieldHeight(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetbottomInset(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v2

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 4704
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$31;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputsearchAnimation(Lorg/telegram/ui/Components/EmojiView;Landroid/animation/AnimatorSet;)V

    :cond_3
    return-void
.end method
