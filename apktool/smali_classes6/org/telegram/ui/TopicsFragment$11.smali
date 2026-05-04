.class Lorg/telegram/ui/TopicsFragment$11;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prevPosition:I

.field prevTop:I

.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 1270
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$11;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 1277
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$11;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-object p2, p2, Lorg/telegram/ui/TopicsFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_9

    .line 1279
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1283
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p3

    .line 1287
    :goto_0
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$11;->prevPosition:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_3

    .line 1288
    iget v0, p0, Lorg/telegram/ui/TopicsFragment$11;->prevTop:I

    sub-int v2, v0, p1

    if-ge p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p3

    .line 1290
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, p3

    goto :goto_3

    :cond_3
    if-le p2, v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, p3

    :goto_2
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    .line 1296
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$11;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, p3

    :goto_4
    invoke-static {v2, v3}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/TopicsFragment;Z)V

    .line 1297
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$11;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v2}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mcheckUi_mainTabsVisible(Lorg/telegram/ui/TopicsFragment;)V

    .line 1299
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$11;->this$0:Lorg/telegram/ui/TopicsFragment;

    if-nez v0, :cond_7

    iget-boolean v0, v2, Lorg/telegram/ui/TopicsFragment;->canShowCreateTopic:Z

    if-nez v0, :cond_8

    :cond_7
    move p3, v1

    :cond_8
    invoke-static {v2, p3, v1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mhideFloatingButton(Lorg/telegram/ui/TopicsFragment;ZZ)V

    .line 1300
    iput p2, p0, Lorg/telegram/ui/TopicsFragment$11;->prevPosition:I

    .line 1301
    iput p1, p0, Lorg/telegram/ui/TopicsFragment$11;->prevTop:I

    :cond_9
    return-void
.end method
