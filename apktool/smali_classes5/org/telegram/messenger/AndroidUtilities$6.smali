.class Lorg/telegram/messenger/AndroidUtilities$6;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I

.field final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 720
    iput p1, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$color:I

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$onClick:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 730
    iget-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 731
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 723
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 725
    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$6;->val$color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
