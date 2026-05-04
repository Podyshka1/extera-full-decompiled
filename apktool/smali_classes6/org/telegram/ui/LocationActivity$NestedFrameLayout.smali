.class Lorg/telegram/ui/LocationActivity$NestedFrameLayout;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NestedFrameLayout"
.end annotation


# instance fields
.field private first:Z

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method public static synthetic $r8$lambda$ynK0zIxOQI3TqZ-AoGfwUpNu_oY(Lorg/telegram/ui/LocationActivity$NestedFrameLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->lambda$onNestedScroll$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V
    .locals 0

    .line 3078
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    .line 3079
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3055
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->first:Z

    .line 3080
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method private synthetic lambda$onNestedScroll$0()V
    .locals 2

    .line 3098
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3099
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 3071
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3072
    iget-object p4, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p4}, Lorg/telegram/ui/LocationActivity;->access$000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3073
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->access$300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p4}, Lorg/telegram/ui/LocationActivity;->access$200(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-interface {p2, p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_0
    return p3
.end method

.method protected drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V
    .locals 1

    .line 3187
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawList(Landroid/graphics/Canvas;ZLjava/util/ArrayList;)V

    .line 3188
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3190
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3191
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->drawListForBlur(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 3192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3059
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    .line 3062
    iget-object p2, p1, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    iget-boolean p3, p1, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->first:Z

    invoke-static {p2, p3}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mfixLayoutInternal(Lorg/telegram/ui/LocationActivity;Z)V

    const/4 p2, 0x0

    .line 3063
    iput-boolean p2, p1, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->first:Z

    return-void

    .line 3065
    :cond_0
    iget-object p2, p1, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/LocationActivity;->-$$Nest$mupdateClipView(Lorg/telegram/ui/LocationActivity;Z)V

    return-void
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 3116
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 5

    .line 3121
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3122
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->access$400(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    .line 3123
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_5

    if-gtz p2, :cond_3

    .line 3127
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3129
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3130
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3132
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3133
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3134
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    if-ne v3, v4, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    move v2, p3

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    .line 3136
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    aput v2, p4, v0

    .line 3137
    invoke-virtual {v1, p5, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    move p5, v0

    :cond_3
    if-eqz p1, :cond_7

    if-nez p5, :cond_4

    if-gez p2, :cond_4

    .line 3145
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p3, p1

    aput p3, p4, v0

    return-void

    .line 3147
    :cond_4
    aput p3, p4, v0

    return-void

    :cond_5
    if-eqz p1, :cond_7

    .line 3152
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    .line 3153
    aput p3, p4, v0

    if-lez p2, :cond_6

    .line 3155
    aput p5, p4, v0

    :cond_6
    if-eqz p1, :cond_7

    .line 3157
    aget p2, p4, v0

    if-lez p2, :cond_7

    .line 3158
    invoke-virtual {p1, p5, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_7
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 3086
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3087
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    .line 3088
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p2}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 3090
    aput p5, p7, p2

    const/4 p2, 0x0

    .line 3091
    invoke-virtual {p1, p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 3095
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3096
    new-instance p1, Lorg/telegram/ui/LocationActivity$NestedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LocationActivity$NestedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LocationActivity$NestedFrameLayout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 3172
    iget-object p4, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 3167
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {p1}, Lorg/telegram/ui/LocationActivity;->-$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    .line 3177
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method
