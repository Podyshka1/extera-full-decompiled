.class Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->createView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;)V
    .locals 0

    .line 1581
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;->this$1:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1584
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1585
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$1;->this$1:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager;->onPageScrolled(II)V

    return-void
.end method
