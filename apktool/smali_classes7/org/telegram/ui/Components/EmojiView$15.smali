.class Lorg/telegram/ui/Components/EmojiView$15;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
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

    .line 2053
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 2056
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2058
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p4

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgettrendingSectionItem(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result p3

    if-ne p2, p3, :cond_0

    .line 2059
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 2063
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 2069
    :cond_1
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 2064
    :cond_2
    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2065
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 2066
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 2067
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$15;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetgifAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->-$$Nest$fgetaddSearch(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
