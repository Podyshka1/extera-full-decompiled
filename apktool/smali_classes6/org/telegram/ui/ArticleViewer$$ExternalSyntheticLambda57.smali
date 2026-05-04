.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback0Return;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$3:Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda57;->f$3:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$w-F0BfBloi8NgjQYS-FiKIVvBzw(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;[ZLorg/telegram/messenger/browser/Browser$Progress;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
