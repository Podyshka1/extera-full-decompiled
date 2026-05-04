.class Lorg/telegram/ui/Components/HashtagHistoryView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagHistoryView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HashtagHistoryView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagHistoryView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Components/HashtagHistoryView$1;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagHistoryView$1;->this$0:Lorg/telegram/ui/Components/HashtagHistoryView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/HashtagHistoryView;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
