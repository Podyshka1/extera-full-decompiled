.class Lorg/telegram/ui/Components/EditTextCaption$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$checkPaste:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;Ljava/lang/Runnable;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$3;->this$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextCaption$3;->val$checkPaste:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$3;->val$checkPaste:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

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
