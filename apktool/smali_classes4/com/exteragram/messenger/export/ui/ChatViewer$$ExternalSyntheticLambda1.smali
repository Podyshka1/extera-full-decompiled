.class public final synthetic Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lcom/exteragram/messenger/export/ui/ChatViewer;


# direct methods
.method public synthetic constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    return-void
.end method


# virtual methods
.method public synthetic hasDoubleTap(Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended$-CC;->$default$hasDoubleTap(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onDoubleTap(Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended$-CC;->$default$onDoubleTap(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;Landroid/view/View;IFF)V

    return-void
.end method

.method public final onItemClick(Landroid/view/View;IFF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$$ExternalSyntheticLambda1;->f$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/exteragram/messenger/export/ui/ChatViewer;->$r8$lambda$_Z5HNc14lr8La2q6wD020Cnw1iM(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/view/View;IFF)V

    return-void
.end method
