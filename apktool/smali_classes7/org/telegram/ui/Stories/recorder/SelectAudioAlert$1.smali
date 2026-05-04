.class Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Stories/recorder/SelectAudioAlert;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

.field final synthetic val$local:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Z)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->val$local:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$fgetquery(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$fputquery(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;Ljava/lang/String;)V

    .line 119
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->val$local:Z

    if-nez p1, :cond_1

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$fgetsharedAudio(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$fgetquery(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$mloadSharedAudio(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$mloadSharedAudioDelayed(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)V

    .line 127
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert$1;->this$0:Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;->-$$Nest$fgetadapter(Lorg/telegram/ui/Stories/recorder/SelectAudioAlert;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

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
