.class Lorg/telegram/ui/Components/EmojiView$20;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 0

    .line 2268
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 2282
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2283
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 2284
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputexpandStickersByDragg(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 2285
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mupdateStickerTabsPosition(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2287
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetchooseStickerActionTracker(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2288
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcreateStickersChooseActionTracker(Lorg/telegram/ui/Components/EmojiView;)V

    .line 2290
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$20;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetchooseStickerActionTracker(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 2272
    :try_start_0
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 2273
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 2274
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2276
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
