.class Lorg/telegram/ui/Components/BulletinFactory$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BulletinFactory;->createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BulletinFactory;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory$1;->this$0:Lorg/telegram/ui/Components/BulletinFactory;

    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 966
    iget-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 971
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 972
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
