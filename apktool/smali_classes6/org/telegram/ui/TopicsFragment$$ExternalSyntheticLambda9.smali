.class public final synthetic Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/TopicsFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IFF)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/TopicsFragment;->$r8$lambda$RD9DbEjnZAEdAn5HV1-ruKtXBqY(Lorg/telegram/ui/TopicsFragment;Landroid/view/View;IFF)Z

    move-result p1

    return p1
.end method

.method public synthetic onLongClickRelease()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onLongClickRelease(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-void
.end method

.method public synthetic onMove(FF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onMove(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;FF)V

    return-void
.end method
