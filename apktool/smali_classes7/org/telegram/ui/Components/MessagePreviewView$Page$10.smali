.class Lorg/telegram/ui/Components/MessagePreviewView$Page$10;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
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
.method public static synthetic $r8$lambda$qMJcYjRkkEtXwr8xwb5fsjS4Mxk(Lorg/telegram/ui/Components/MessagePreviewView$Page$10;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->lambda$onLayoutChildren$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;IIZLorg/telegram/ui/Components/MessagePreviewView;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iput-object p6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->val$this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private synthetic lambda$onLayoutChildren$0()V
    .locals 1

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected hasSiblingChild(I)Z
    .locals 7

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$mgetValidGroupedMessage(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    .line 719
    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v2, v3, :cond_3

    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v2, v3, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    .line 722
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 724
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 728
    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 738
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    .line 739
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void

    .line 742
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 744
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 745
    new-instance p1, Lorg/telegram/ui/Components/MessagePreviewView$Page$10$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page$10;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
