.class Lorg/telegram/ui/ProfileActivity$12;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 4134
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomToggleTransition()Landroid/animation/Animator;
    .locals 2

    .line 4138
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputsearchMode(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 4139
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4140
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearFocusOnSearchView()V

    .line 4142
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4143
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchItem(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4145
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchMode(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$msearchExpandTransition(Lorg/telegram/ui/ProfileActivity;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 4150
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$12;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
