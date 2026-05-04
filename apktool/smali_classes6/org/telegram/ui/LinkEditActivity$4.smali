.class Lorg/telegram/ui/LinkEditActivity$4;
.super Lorg/telegram/ui/Cells/TextCheckCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LinkEditActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LinkEditActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$4;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 325
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->onDraw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
