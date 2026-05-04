.class Lorg/telegram/ui/Stories/DialogStoriesCell$8;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$8;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 413
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p3, 0x1

    const/high16 p4, 0x41f80000    # 31.0f

    const/high16 v0, 0x42aa0000    # 85.0f

    if-ne p2, p3, :cond_0

    .line 416
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 418
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    return-void
.end method
