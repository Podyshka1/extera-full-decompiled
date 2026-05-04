.class Lorg/telegram/ui/web/HistoryFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/HistoryFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/HistoryFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/HistoryFragment;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/telegram/ui/web/HistoryFragment$3;->this$0:Lorg/telegram/ui/web/HistoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/web/HistoryFragment$3;->this$0:Lorg/telegram/ui/web/HistoryFragment;

    iget-object p2, p1, Lorg/telegram/ui/Components/UniversalFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p2, :cond_0

    .line 234
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
