.class Lorg/telegram/ui/Components/TrendingStickersLayout$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

.field final synthetic val$delegate:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->val$delegate:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 1

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgettopOffset(Lorg/telegram/ui/Components/TrendingStickersLayout;)I

    move-result p1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fputmotionEventCatchedByListView(Lorg/telegram/ui/Components/TrendingStickersLayout;Z)V

    .line 210
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->val$delegate:Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onListViewInterceptTouchEvent(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 204
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/TrendingStickersLayout;->glueToTopAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$3;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetignoreLayout(Lorg/telegram/ui/Components/TrendingStickersLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    :cond_0
    return-void
.end method
