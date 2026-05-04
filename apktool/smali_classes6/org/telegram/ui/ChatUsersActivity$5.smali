.class Lorg/telegram/ui/ChatUsersActivity$5;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;IZ)V
    .locals 0

    .line 763
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$5;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$5;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetfirstLoaded(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$5;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$5;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 769
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method
