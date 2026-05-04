.class Lorg/telegram/ui/Components/FilterTabsView$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FilterTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$6;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1291
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$6;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1292
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$6;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
