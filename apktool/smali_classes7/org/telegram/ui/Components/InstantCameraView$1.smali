.class Lorg/telegram/ui/Components/InstantCameraView$1;
.super Landroid/graphics/Paint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/InstantCameraView$Delegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;I)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$1;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 298
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$1;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
