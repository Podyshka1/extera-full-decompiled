.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;->f$2:Landroid/app/Activity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$Mcm804LrLC8EIOUZba7nv0Jtv74(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PageLayout;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
