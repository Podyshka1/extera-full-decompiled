.class Lorg/telegram/ui/Components/AudioPlayerAlert$17;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    if-nez p2, :cond_0

    const/high16 p2, 0x41500000    # 13.0f

    .line 1272
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    .line 1274
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    if-ge v0, p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1275
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_1

    .line 1276
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le p2, v1, :cond_1

    .line 1277
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    :cond_0
    if-ne p2, p1, :cond_1

    .line 1281
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1287
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 1288
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateEmptyViewPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 1290
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1291
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 1292
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 1293
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    goto :goto_0

    .line 1295
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$17;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 v0, p3, 0x1

    .line 1296
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 1298
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const/16 v1, 0xa

    if-eqz p3, :cond_2

    if-ge p2, v1, :cond_3

    .line 1300
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->loadMoreMusic()V

    return-void

    :cond_2
    add-int/2addr p2, v0

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    .line 1304
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->loadMoreMusic()V

    :cond_3
    return-void
.end method
