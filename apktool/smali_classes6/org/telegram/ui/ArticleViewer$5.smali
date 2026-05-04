.class Lorg/telegram/ui/ArticleViewer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->goBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 2035
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fgetmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2037
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2039
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    .line 2040
    aget-object v4, v1, v0

    aput-object v4, v1, v2

    .line 2041
    aput-object v3, v1, v0

    .line 2042
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/web/WebActionBar;->swap()V

    .line 2043
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpage0Background(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/AnimatedColor;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetpage1Background(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/AnimatedColor;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 2045
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_0

    .line 2046
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->updateLastVisible()V

    .line 2049
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 2051
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 2052
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer$PageLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v1, v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2053
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->clear(Z)V

    .line 2055
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer;->updateTitle(Z)V

    .line 2056
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer;->updatePages()V

    .line 2058
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->cleanup()V

    .line 2059
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    aget-object v1, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2060
    instance-of v1, p1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v1, :cond_1

    .line 2061
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    .line 2063
    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_4

    .line 2064
    check-cast p1, Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {p1}, Lorg/telegram/ui/web/WebInstantView;->recycle(Lorg/telegram/tgnet/TLRPC$WebPage;)V

    goto :goto_0

    .line 2068
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v1, :cond_3

    .line 2069
    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->release()V

    .line 2070
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->destroy()V

    goto :goto_0

    .line 2072
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$msaveCurrentPagePosition(Lorg/telegram/ui/ArticleViewer;)V

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$monClosed(Lorg/telegram/ui/ArticleViewer;)V

    .line 2077
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputmovingPage(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->-$$Nest$fputstartedTracking(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$5;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fputcloseAnimationInProgress(Lorg/telegram/ui/ArticleViewer;Z)V

    return-void
.end method
