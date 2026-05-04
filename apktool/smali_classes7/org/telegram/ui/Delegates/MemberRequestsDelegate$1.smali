.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->setRecyclerView(Lorg/telegram/ui/Components/RecyclerListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

.field final synthetic val$currentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    iput-object p2, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->val$currentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 221
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->val$currentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->-$$Nest$fgetlistScrollListener(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->val$currentScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Delegates/MemberRequestsDelegate$1;->this$0:Lorg/telegram/ui/Delegates/MemberRequestsDelegate;

    invoke-static {v0}, Lorg/telegram/ui/Delegates/MemberRequestsDelegate;->-$$Nest$fgetlistScrollListener(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
