.class Lorg/telegram/ui/VoIPFragment$6;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$6;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1011
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$6;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetcallingUserTitle(Lorg/telegram/ui/VoIPFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 1014
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1017
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->getPrivateCall()Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->getPrivateCall()Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v3, :cond_0

    .line 1019
    sget v3, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1021
    :cond_0
    sget v3, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    :goto_0
    invoke-interface {v0}, Lorg/telegram/messenger/voip/VoIPServiceState;->getCallDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 1026
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    .line 1027
    div-long/2addr v3, v0

    long-to-int v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
