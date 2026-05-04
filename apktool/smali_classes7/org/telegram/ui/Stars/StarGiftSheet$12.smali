.class Lorg/telegram/ui/Stars/StarGiftSheet$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;->onSharePressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$12;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCopy()Z
    .locals 2

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$12;->this$0:Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 1354
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1355
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->ignoreDetach()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic didShare()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate$-CC;->$default$didShare(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V

    return-void
.end method
