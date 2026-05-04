.class Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetinTopHotspot(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetautoScrollVelocity(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 52
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetinBottomHotspot(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->-$$Nest$fgetautoScrollVelocity(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 55
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
