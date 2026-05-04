.class Lorg/telegram/ui/SettingsActivity$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 397
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mupdateActionBarVisible(Lorg/telegram/ui/SettingsActivity;)V

    if-eqz p3, :cond_1

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/SettingsActivity;Z)V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mupdateMainTabsVisibility(Lorg/telegram/ui/SettingsActivity;)V

    .line 402
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p1, :cond_2

    .line 403
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 406
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    move-result-object p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->onScrolled(FF)V

    .line 408
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SettingsActivity;->-$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/SettingsActivity;)V

    :cond_3
    return-void
.end method
