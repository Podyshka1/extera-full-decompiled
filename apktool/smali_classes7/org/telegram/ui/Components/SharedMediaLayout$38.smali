.class Lorg/telegram/ui/Components/SharedMediaLayout$38;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->animateToMediaColumnsCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$ci:I

.field final synthetic val$newColumnsCount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;II)V
    .locals 0

    .line 4160
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->val$ci:I

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->val$newColumnsCount:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 4163
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 4164
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fputphotoVideoChangeColumnsAnimation(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 4165
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->val$ci:I

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->val$newColumnsCount:I

    aput v2, p1, v1

    move p1, v0

    .line 4166
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_4

    .line 4167
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, p1

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->isTabZoomable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4168
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 4172
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez p1, :cond_1

    .line 4174
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->setListFrozen(Z)V

    .line 4176
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaColumnsCount(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->val$ci:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 4177
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 4178
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 4179
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_1

    .line 4181
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4183
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimationSupportingListView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 4186
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$38;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$msaveScrollPosition(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    return-void
.end method
