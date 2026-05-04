.class Lorg/telegram/ui/Components/EmojiView$21;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 2294
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 2297
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    .line 2299
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgetstickersPerRow(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1

    .line 2301
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgettotalItems(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgetcache(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgetcache(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_2

    :cond_1
    return v2

    .line 2307
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgetstickersPerRow(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1

    .line 2309
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgettotalItems(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetcache(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2311
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersSearchGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->-$$Nest$fgetcache(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_5

    :cond_4
    return v2

    .line 2315
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$21;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetstickersGridAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->-$$Nest$fgetstickersPerRow(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1
.end method
