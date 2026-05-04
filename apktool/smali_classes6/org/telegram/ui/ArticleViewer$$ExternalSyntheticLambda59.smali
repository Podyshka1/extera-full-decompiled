.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$2:Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda59;->f$2:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$PQrku7tcemgYl_de1IZpObu89ZE(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
