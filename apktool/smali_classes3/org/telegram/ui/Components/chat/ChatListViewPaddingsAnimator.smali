.class public Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentAdditionalHeight:I

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$bFF-sXCPq3Ccgxl5P8akrY9z9vg(Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->lambda$setPaddings$0(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private synthetic lambda$setPaddings$0(I)V
    .locals 2

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 45
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCurrentAdditionalHeight()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->currentAdditionalHeight:I

    return v0
.end method

.method public setPaddings(IFIZ)V
    .locals 1

    .line 23
    iget p3, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->currentAdditionalHeight:I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 24
    iput v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->currentAdditionalHeight:I

    .line 25
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    .line 27
    iput v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->currentAdditionalHeight:I

    .line 28
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_1
    :goto_0
    float-to-int p2, p2

    .line 34
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-ne p3, p1, :cond_3

    if-eq v0, p2, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    sub-int/2addr p3, p1

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 41
    iget-object p4, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;I)V

    invoke-static {p4, v0}, Lorg/telegram/messenger/AndroidUtilities;->doOnLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 50
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/chat/ChatListViewPaddingsAnimator;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 50
    invoke-virtual {p3, p4, p1, v0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
