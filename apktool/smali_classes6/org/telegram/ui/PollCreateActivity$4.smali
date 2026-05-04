.class Lorg/telegram/ui/PollCreateActivity$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PollCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PollCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PollCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$4;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 662
    instance-of v0, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-nez v0, :cond_0

    return-void

    .line 665
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 670
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 671
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method
