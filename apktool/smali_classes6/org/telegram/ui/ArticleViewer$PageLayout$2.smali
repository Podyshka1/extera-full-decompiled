.class Lorg/telegram/ui/ArticleViewer$PageLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$PageLayout;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 12938
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 12942
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 12947
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 12950
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12951
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 12952
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p2, :cond_1

    .line 12953
    iget-object p1, p2, Lorg/telegram/ui/ArticleViewer$Sheet;->windowView:Lorg/telegram/ui/ArticleViewer$Sheet$WindowView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 12954
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12955
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetwindowView(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12957
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->updatePages()V

    .line 12958
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$2;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, p3}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mcheckScroll(Lorg/telegram/ui/ArticleViewer;I)V

    return-void
.end method
