.class Lorg/telegram/ui/ChannelCreateActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

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

    .line 836
    iget-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$8;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelCreateActivity;->-$$Nest$fgetdescriptionTextView(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChannelCreateActivity;->-$$Nest$mcheckUserName(Lorg/telegram/ui/ChannelCreateActivity;Ljava/lang/String;)Z

    return-void
.end method
