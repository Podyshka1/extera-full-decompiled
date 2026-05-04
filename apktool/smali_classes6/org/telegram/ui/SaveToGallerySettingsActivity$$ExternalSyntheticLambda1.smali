.class public final synthetic Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SaveToGallerySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IFF)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SaveToGallerySettingsActivity$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/SaveToGallerySettingsActivity;->$r8$lambda$LoKI7TdJgkOOlrRfeLESzKOrefE(Lorg/telegram/ui/SaveToGallerySettingsActivity;Landroid/view/View;IFF)Z

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
