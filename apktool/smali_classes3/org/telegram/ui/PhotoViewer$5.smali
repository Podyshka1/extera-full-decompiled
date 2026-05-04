.class Lorg/telegram/ui/PhotoViewer$5;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$5;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1243
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$5;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 1246
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1247
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$5;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1248
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$5;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PhotoCropView;->setVideoThumbFlashAlpha(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1243
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$5;->setValue(Landroid/view/View;F)V

    return-void
.end method
