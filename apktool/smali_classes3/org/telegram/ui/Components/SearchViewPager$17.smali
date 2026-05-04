.class Lorg/telegram/ui/Components/SearchViewPager$17;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$17;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 603
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$17;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager;->onPageScrolled(II)V

    return-void
.end method
