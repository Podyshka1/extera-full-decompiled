.class Lorg/telegram/ui/Components/TrendingStickersLayout$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;[Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->-$$Nest$fgetcache(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->-$$Nest$fgettotalItems(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 301
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;->-$$Nest$fgetstickersPerRow(Lorg/telegram/ui/Components/TrendingStickersLayout$TrendingStickersAdapter;)I

    move-result p1

    return p1

    .line 305
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$5;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Adapters/StickersSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/StickersSearchAdapter;->getSpanSize(I)I

    move-result p1

    return p1
.end method
