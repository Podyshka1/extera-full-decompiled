.class Lorg/telegram/ui/Stories/DialogStoriesCell$6;
.super Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$6;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EllipsizeSpanAnimator;)V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V
    .locals 0

    .line 347
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarAnimatedSubtitleOverlayContainer;->onItemChanged(Lme/vkryl/android/animator/ReplaceAnimator;)V

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$6;->this$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
