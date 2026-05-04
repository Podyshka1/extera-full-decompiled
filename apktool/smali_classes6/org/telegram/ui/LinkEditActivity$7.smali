.class Lorg/telegram/ui/LinkEditActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lorg/telegram/ui/LinkEditActivity;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetignoreSet(Lorg/telegram/ui/LinkEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$fgetusesEditText(Lorg/telegram/ui/LinkEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 545
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x186a0

    if-le p1, v0, :cond_2

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$mresetUses(Lorg/telegram/ui/LinkEditActivity;)V

    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$mchooseUses(Lorg/telegram/ui/LinkEditActivity;I)V

    return-void

    .line 547
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/LinkEditActivity$7;->this$0:Lorg/telegram/ui/LinkEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/LinkEditActivity;->-$$Nest$mresetUses(Lorg/telegram/ui/LinkEditActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
