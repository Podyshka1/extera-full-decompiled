.class Lorg/telegram/ui/PhotoViewer$33;
.super Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 7212
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 0

    .line 7215
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 7216
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$33;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
