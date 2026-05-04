.class Lorg/telegram/ui/ProfileActivity$ListAdapter$9;
.super Lorg/telegram/ui/Business/ProfileHoursCell;
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
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 13725
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$9;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Business/ProfileHoursCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected processColor(I)I
    .locals 2

    .line 13728
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$9;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result p1

    return p1
.end method
