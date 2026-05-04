.class Lorg/telegram/ui/Components/AudioPlayerAlert$16;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 1

    .line 1238
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1218
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1220
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetactionBar(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1221
    iput-boolean p3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->ignoreLayout:Z

    .line 1222
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    iget-object p3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result p3

    iget-object p5, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchOpenOffset(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result p5

    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, v1

    invoke-virtual {p1, p3, p5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v1, 0x0

    .line 1223
    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1224
    iput-boolean p2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->ignoreLayout:Z

    .line 1225
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V

    return-void

    .line 1226
    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollToSong(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1227
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputscrollToSong(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 1228
    iput-boolean p3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->ignoreLayout:Z

    .line 1229
    iget-object p1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mscrollToCurrentSong(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1230
    invoke-super/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1232
    :cond_1
    iput-boolean p2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1243
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1246
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method
