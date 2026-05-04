.class Lorg/telegram/ui/ProfileActivity$ListAdapter$1;
.super Lorg/telegram/ui/Cells/TextDetailCell;
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
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 0

    .line 13559
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    return-void
.end method


# virtual methods
.method protected processColor(I)I
    .locals 2

    .line 13562
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mdontApplyPeerColor(Lorg/telegram/ui/ProfileActivity;IZ)I

    move-result p1

    return p1
.end method
