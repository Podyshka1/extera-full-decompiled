.class Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->startRevealMedia(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 958
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;->this$0:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v0, p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    .line 959
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
