.class Lorg/telegram/ui/DilogCacheBottomSheet$5;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DilogCacheBottomSheet;->onViewCreated(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DilogCacheBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DilogCacheBottomSheet;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$5;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 289
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 290
    iget-object p1, p0, Lorg/telegram/ui/DilogCacheBottomSheet$5;->this$0:Lorg/telegram/ui/DilogCacheBottomSheet;

    iget-object p2, p1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p2}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->isPinnedToTop()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowShadow(Z)V

    :cond_0
    return-void
.end method
