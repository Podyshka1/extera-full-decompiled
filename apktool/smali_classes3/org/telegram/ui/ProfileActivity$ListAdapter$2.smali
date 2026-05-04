.class Lorg/telegram/ui/ProfileActivity$ListAdapter$2;
.super Lorg/telegram/ui/Cells/AboutLinkCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13569
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Cells/AboutLinkCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected didPressUrl(Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 1

    .line 13572
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mopenUrl(Lorg/telegram/ui/ProfileActivity;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method protected didResizeEnd()V
    .locals 2

    .line 13577
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mIgnoreTopPadding:Z

    return-void
.end method

.method protected didResizeStart()V
    .locals 2

    .line 13582
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mIgnoreTopPadding:Z

    return-void
.end method

.method protected processColor(I)I
    .locals 2

    .line 13587
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$2;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result p1

    return p1
.end method
