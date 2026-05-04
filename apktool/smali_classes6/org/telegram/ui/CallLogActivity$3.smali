.class Lorg/telegram/ui/CallLogActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrollUpdated:Z

.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public static synthetic $r8$lambda$iRFEqehapgbXV6OFMVt1wkqlR7U(Lorg/telegram/ui/CallLogActivity$3;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity$3;->lambda$onScrolled$0(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScrolled$0(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$mgetCalls(Lorg/telegram/ui/CallLogActivity;II)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/CallLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 868
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/CallLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v3

    :goto_0
    if-lez v1, :cond_1

    .line 870
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v4

    .line 871
    iget-object v5, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetendReached(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetloading(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v5}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetcalls(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v1, v0

    add-int/lit8 v4, v4, -0x5

    if-lt v1, v4, :cond_1

    .line 872
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetcalls(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v4}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetcalls(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 873
    new-instance v4, Lorg/telegram/ui/CallLogActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/CallLogActivity$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CallLogActivity$3;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 877
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-eqz p3, :cond_5

    .line 880
    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity$3;->scrollUpdated:Z

    if-eqz v1, :cond_5

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetfloatingButton(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object v1

    if-gez p3, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 882
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v4

    if-eqz v4, :cond_4

    if-lez p3, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-static {v1, v4}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/CallLogActivity;Z)V

    .line 883
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$mupdateMainTabsVisibility(Lorg/telegram/ui/CallLogActivity;)V

    .line 885
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/CallLogActivity$3;->scrollUpdated:Z

    .line 887
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetheaderShadowView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/HeaderShadowView;

    move-result-object v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ge p1, v0, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/HeaderShadowView;->setShadowVisible(ZZ)V

    .line 889
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$3;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/CallLogActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/CallLogActivity;)V

    :cond_8
    return-void
.end method
