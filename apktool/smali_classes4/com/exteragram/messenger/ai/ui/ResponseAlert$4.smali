.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;-><init>(Landroid/content/Context;Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChangeAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$100(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$4;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->access$200(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
