.class Lcom/exteragram/messenger/export/ui/ChatViewer$12;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/export/ui/ChatViewer;->createTextureView(Z)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/export/ui/ChatViewer;Landroid/content/Context;)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$12;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 0

    .line 1445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1446
    iget-object p1, p0, Lcom/exteragram/messenger/export/ui/ChatViewer$12;->this$0:Lcom/exteragram/messenger/export/ui/ChatViewer;

    invoke-static {p1}, Lcom/exteragram/messenger/export/ui/ChatViewer;->-$$Nest$fgetcontentView(Lcom/exteragram/messenger/export/ui/ChatViewer;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
