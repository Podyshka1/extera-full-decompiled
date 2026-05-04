.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->startRevealMedia(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 0

    .line 2303
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2306
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$1;->this$3:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 2307
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method
