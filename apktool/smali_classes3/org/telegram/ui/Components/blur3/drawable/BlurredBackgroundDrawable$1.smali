.class Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getViewOutlineProvider()Landroid/view/ViewOutlineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$1;->this$0:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$1;->this$0:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->boundProps:Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;

    iget-object v0, p1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->boundsWithPadding:Landroid/graphics/Rect;

    iget-object p1, p1, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable$Props;->radii:[F

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->getOutline(Landroid/graphics/Outline;Landroid/graphics/Rect;[F)V

    return-void
.end method
