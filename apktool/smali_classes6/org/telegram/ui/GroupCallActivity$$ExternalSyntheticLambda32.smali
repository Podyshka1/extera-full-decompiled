.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lorg/telegram/messenger/ChatObject$Call;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/app/Activity;Lorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$2:Lorg/telegram/messenger/ChatObject$Call;

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
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda32;->f$2:Lorg/telegram/messenger/ChatObject$Call;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$RSysMEdo37O6WxwsTVxkCM90IQg(Lorg/telegram/ui/GroupCallActivity;Landroid/app/Activity;Lorg/telegram/messenger/ChatObject$Call;Landroid/view/View;IFF)V

    return-void
.end method
