.class public Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1850
    new-instance v0, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1849
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static of(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 1865
    const-class v0, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 1866
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 1861
    check-cast p1, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/ui/Stories/LiveCommentsView$Message;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;->set(Lorg/telegram/ui/Stories/LiveCommentsView$Message;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 1849
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;
    .locals 0

    .line 1854
    new-instance p2, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lorg/telegram/ui/Stories/LiveCommentsView$LiveCommentView;-><init>(Landroid/content/Context;IZ)V

    .line 1855
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 1872
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
