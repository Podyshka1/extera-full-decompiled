.class Lorg/telegram/ui/ContactsActivity$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastScrollToDown:Z

.field private scrollUpdated:Z

.field private scrollingManually:Z

.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 905
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/ContactsActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/ContactsActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 906
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 908
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity$6;->scrollingManually:Z

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 910
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity$6;->scrollingManually:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ContactsActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 920
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 923
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetfloatingButton(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/ContactsActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez p3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p3, :cond_3

    .line 925
    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity$6;->scrollUpdated:Z

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity$6;->scrollingManually:Z

    if-eqz v4, :cond_3

    .line 926
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    xor-int/2addr v2, v3

    invoke-static {v4, v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fputfloatingButtonVisibleByScroll(Lorg/telegram/ui/ContactsActivity;Z)V

    .line 927
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_floatingButtonVisible(Lorg/telegram/ui/ContactsActivity;)V

    .line 929
    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ContactsActivity$6;->scrollUpdated:Z

    :cond_4
    if-nez v0, :cond_6

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ge p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    goto :goto_3

    :cond_6
    :goto_2
    move p1, v3

    .line 945
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetheaderShadowView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/HeaderShadowView;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/HeaderShadowView;->setShadowVisible(ZZ)V

    if-gez p3, :cond_7

    move v1, v3

    .line 947
    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity$6;->lastScrollToDown:Z

    .line 949
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 950
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 951
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/ContactsActivity;)V

    .line 954
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$6;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->-$$Nest$mcheckUi_searchFieldY(Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method
