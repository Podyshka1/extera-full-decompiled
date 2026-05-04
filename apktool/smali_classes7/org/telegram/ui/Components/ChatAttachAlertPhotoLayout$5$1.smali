.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;Landroid/content/Context;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 1

    .line 877
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    .line 878
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$mgetTopScrollOffset(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 884
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method
