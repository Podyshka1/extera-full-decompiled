.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1619
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1620
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V

    return-void

    .line 1623
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p2, :cond_1

    .line 1624
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onTextChanged(Landroid/widget/EditText;)V

    .line 1626
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$mcheckClearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 1627
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetcurrentSearchFilters(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1628
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetselectedFilterIndex(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fputselectedFilterIndex(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$monFiltersChanged(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    :cond_2
    return-void
.end method
