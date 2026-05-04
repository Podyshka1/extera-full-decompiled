.class Lorg/telegram/ui/ArticleViewer$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
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

    .line 4029
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 4032
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/AddressBarList;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p1, :cond_0

    .line 4033
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$15;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/WebActionBar;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->addressEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
