.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert;->replaceLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert;Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    iput-object p2, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 360
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetonLinkPress(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/messenger/Utilities$CallbackReturn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetonLinkPress(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/messenger/Utilities$CallbackReturn;

    move-result-object p1

    new-instance v0, Landroid/text/style/URLSpan;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-virtual {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->dismiss()V

    return-void

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetfragment(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->this$0:Lcom/exteragram/messenger/ai/ui/ResponseAlert;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/ResponseAlert;->-$$Nest$fgetfragment(Lcom/exteragram/messenger/ai/ui/ResponseAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$7;->val$url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 372
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 373
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
