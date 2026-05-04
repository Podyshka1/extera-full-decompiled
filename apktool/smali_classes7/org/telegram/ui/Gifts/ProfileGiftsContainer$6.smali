.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->openEnterNameAlert(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field final synthetic val$currentFocus:Landroid/view/View;

.field final synthetic val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$whenDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 2002
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$currentFocus:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x6

    const/4 p3, 0x0

    if-ne p2, p1, :cond_4

    .line 2006
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2007
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    if-lez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0xc

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 2012
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 2014
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$dialog:[Lorg/telegram/ui/ActionBar/AlertDialog;

    aget-object p1, p1, p3

    if-eqz p1, :cond_1

    .line 2015
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2017
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$currentFocus:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 2018
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return v0

    .line 2008
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$6;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return v0

    :cond_4
    return p3
.end method
