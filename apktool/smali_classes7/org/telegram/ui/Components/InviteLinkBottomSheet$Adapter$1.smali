.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;
.super Lorg/telegram/ui/Components/LinkActionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V
    .locals 0

    .line 642
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;->this$1:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    return-void
.end method


# virtual methods
.method public showBulletin(ILjava/lang/CharSequence;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter$1;->this$1:Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x0

    .line 646
    iput-boolean p2, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    const/4 p2, 0x1

    .line 647
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
