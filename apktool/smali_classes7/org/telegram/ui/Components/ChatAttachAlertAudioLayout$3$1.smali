.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;Landroid/content/Context;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 1

    .line 186
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    .line 187
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$3;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method
