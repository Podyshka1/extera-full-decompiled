.class public abstract Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FastScrollAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract getLetter(I)Ljava/lang/String;
.end method

.method public abstract getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
.end method

.method public getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F
    .locals 3

    .line 314
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getTotalItemsCount()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTotalItemsCount()I
    .locals 1

    .line 310
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onFastScrollSingleTap()V
    .locals 0

    return-void
.end method

.method public onFinishFastScroll(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    return-void
.end method

.method public onStartFastScroll()V
    .locals 0

    return-void
.end method
