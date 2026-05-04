.class Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity$InputCell;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

.field final synthetic val$this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity$InputCell;Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->val$this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateUsernameCell(Ljava/lang/String;)V
    .locals 1

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgeteditableUsernameCell(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgeteditableUsernameCell(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->updateUsername(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fputusername(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    .line 814
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$200(Lorg/telegram/ui/ChangeUsernameActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 816
    sget v1, Lorg/telegram/messenger/R$string;->UsernameHelpLink:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "UsernameHelpLink"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 818
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v1, :cond_1

    .line 820
    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;

    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v3, v3, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {v0, v3, p1}, Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 793
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p2, p2, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object p2

    .line 794
    iget-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p3, p3, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p3, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fputusername(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    .line 795
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->updateUsernameCell(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 800
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p2, p2, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object p2

    .line 801
    iget-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p3, p3, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p3, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fputusername(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->updateUsernameCell(Ljava/lang/String;)V

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetignoreCheck(Lorg/telegram/ui/ChangeUsernameActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 806
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell$1;->this$1:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity;->-$$Nest$mcheckUserName(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z

    return-void
.end method
