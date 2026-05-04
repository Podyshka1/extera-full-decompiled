.class Lorg/telegram/ui/Components/MessagePreviewView$Page$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 670
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x0

    .line 672
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 673
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 674
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setParentViewSize(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 677
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    if-eqz p1, :cond_1

    .line 678
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->invalidate()V

    :cond_1
    return-void
.end method
