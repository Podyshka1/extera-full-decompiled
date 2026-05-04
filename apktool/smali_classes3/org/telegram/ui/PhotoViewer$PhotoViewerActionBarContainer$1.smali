.class Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;Landroid/content/Context;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;->this$0:Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 442
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
