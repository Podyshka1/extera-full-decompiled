.class Lorg/telegram/ui/ChatUsersActivity$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.method constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 756
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$4;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
