.class Lorg/telegram/ui/PhotoViewer$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 3

    .line 4979
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4980
    new-instance v0, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v1, p1, Lorg/telegram/ui/PhotoViewer;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$16;->blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-void
.end method


# virtual methods
.method public createDrawable()Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;
    .locals 2

    .line 4984
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 4985
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    .line 4986
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetiBlur3BlurredDrawables(Lorg/telegram/ui/PhotoViewer;)Lme/vkryl/core/reference/ReferenceList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lme/vkryl/core/reference/ReferenceList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 4989
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableSource;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawableSource;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-object v0
.end method

.method public synthetic dispatchOnDrawablesRelativePositionChange()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource$-CC;->$default$dispatchOnDrawablesRelativePositionChange(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFF)V
    .locals 8

    .line 4995
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4996
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4997
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$16;->blur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const v3, -0xd9d9da

    const/high16 v4, 0x33000000

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/PhotoViewer;->drawCaptionBlur(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;IIZZZ)V

    const/high16 p1, 0x26000000

    .line 4998
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4999
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
