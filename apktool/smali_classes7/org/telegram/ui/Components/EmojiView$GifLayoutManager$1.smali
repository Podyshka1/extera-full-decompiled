.class Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 8678
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 8681
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifSearchAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetresults(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8682
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 8684
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    return p1
.end method
