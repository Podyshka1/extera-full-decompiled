.class Lorg/telegram/ui/GroupCallActivity$37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;)V
    .locals 0

    .line 5415
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 5428
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageIsEmpty(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/BoolAnimator;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    const/4 v0, 0x0

    .line 5430
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    .line 5432
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetmaxGroupCallMessageLength(Lorg/telegram/ui/GroupCallActivity;)I

    move-result v0

    add-int/lit8 v1, p1, 0x19

    if-le v1, v0, :cond_0

    .line 5434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5436
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlimitTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 5437
    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlimitTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 5438
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$37;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetlimitTextView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v1

    if-lt p1, v0, :cond_1

    const v2, -0x138889

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    if-le p1, v0, :cond_2

    .line 5441
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    :cond_2
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
