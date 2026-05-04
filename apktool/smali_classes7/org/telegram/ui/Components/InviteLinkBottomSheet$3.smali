.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->hasMore:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->usersLoading:Z

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$3;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget p3, p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->rowCount:I

    sub-int/2addr p3, p1

    const/16 p1, 0xa

    if-ge p3, p1, :cond_0

    .line 310
    invoke-virtual {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->loadUsers()V

    :cond_0
    return-void
.end method
