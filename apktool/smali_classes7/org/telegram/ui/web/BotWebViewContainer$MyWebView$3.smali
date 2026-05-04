.class Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;-><init>(Landroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPermissionsDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

.field final synthetic val$bot:Z

.field final synthetic val$botId:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$2yWw2BLNVDPE9RgDuTMCL9FnW_0([ZLandroid/webkit/JsResult;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 4171
    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 4172
    aput-boolean p3, p0, p2

    .line 4173
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$46yWweFpbnX7LDYh2i48Aea3vk4([ZLandroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 4234
    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4235
    aput-boolean v0, p0, p2

    .line 4236
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$7PCV5e5hCA51YuoeBzteUPjB_EM(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$15(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8K_cVxUfdXQ-NueSTSJanwrHgAM(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onGeolocationPermissionsShowPrompt$10(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FlsajW65O1qximWu9YktPhKFj1I([ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x0

    .line 4228
    aget-boolean p4, p0, p3

    if-nez p4, :cond_0

    const/4 p4, 0x1

    .line 4229
    aput-boolean p4, p0, p3

    .line 4230
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$IC0Fb5OtyqFbCxZwBQSp3JraDd0(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$17(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ioa-wrM0cMNwKMCMmI1x9HeQaBk(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onGeolocationPermissionsShowPrompt$11(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JIRgPyLkvZvw66mMqbAAjH2Ayd8([ZLandroid/webkit/JsResult;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 4150
    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 4151
    aput-boolean p3, p0, p2

    .line 4152
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$K1Afog_syJZf2IitVkUD71GBLv4([ZLandroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 4156
    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4157
    aput-boolean v0, p0, p2

    .line 4158
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LMHOtTZ1WIWS-ZO19WLo-8NoNkI([ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 4222
    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 4223
    aput-boolean p3, p0, p2

    .line 4224
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$LbrLC539usybksXm7pXYylqEpbM(Lorg/telegram/ui/Components/EditTextCaption;Ljava/lang/Runnable;)V
    .locals 2

    .line 4240
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const-wide/16 v0, 0x50

    .line 4241
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0Kpxaui4vP-zYr1rro_d6_1xc4([ZLandroid/webkit/JsResult;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 4177
    aget-boolean p3, p0, p2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 4178
    aput-boolean p3, p0, p2

    .line 4179
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Rq-FVApM7pJCUDA7L0k7bKb6TDo(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$16(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SmteFhEXrNzOwaAdmJfF9eO0W6U(Lorg/telegram/ui/Components/EditTextCaption;)V
    .locals 0

    .line 4259
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public static synthetic $r8$lambda$_7Kla_nw6y9QMdB_QtfCn5wldig(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$14(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$io3EJ7eiBtyg5Jwe4zT5o_y4Yrg([ZLandroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 4183
    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4184
    aput-boolean v0, p0, p2

    .line 4185
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$nx_bSCDdTOwVbN5ZZstRZCs18D0(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$12(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yiv7hwT0rmYAY5XC94zAJXRFkDA(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lambda$onPermissionRequest$13(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Landroid/content/Context;ZJ)V
    .locals 0

    .line 4142
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    iput-wide p4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$botId:J

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private synthetic lambda$onGeolocationPermissionsShowPrompt$10(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4460
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 4461
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4462
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputhasUserPermissions(Lorg/telegram/ui/web/BotWebViewContainer;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onGeolocationPermissionsShowPrompt$11(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4455
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4456
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4458
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4459
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$mrunWithPermissions(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 4466
    invoke-interface {p1, p2, p3, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$12(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 4529
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4530
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 4531
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputhasUserPermissions(Lorg/telegram/ui/web/BotWebViewContainer;Z)V

    return-void

    .line 4533
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method

.method private synthetic lambda$onPermissionRequest$13(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4524
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4525
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4527
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4528
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p3

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$mrunWithPermissions(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void

    .line 4537
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$14(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 4559
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4560
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 4561
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputhasUserPermissions(Lorg/telegram/ui/web/BotWebViewContainer;Z)V

    return-void

    .line 4563
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method

.method private synthetic lambda$onPermissionRequest$15(Landroid/webkit/PermissionRequest;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4554
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4555
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4557
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4558
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p3

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$mrunWithPermissions(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void

    .line 4567
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPermissionRequest$16(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 4594
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 4595
    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget-object p2, p2, v0

    filled-new-array {p3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 4596
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputhasUserPermissions(Lorg/telegram/ui/web/BotWebViewContainer;Z)V

    return-void

    .line 4598
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method

.method private synthetic lambda$onPermissionRequest$17(Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 4589
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4590
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4592
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4593
    iget-object p3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p3

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$mrunWithPermissions(Lorg/telegram/ui/web/BotWebViewContainer;[Ljava/lang/String;Landroidx/core/util/Consumer;)V

    return-void

    .line 4602
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    const/16 v0, 0xa

    .line 4626
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 3

    .line 4383
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCloseWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4384
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4385
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/web/BotWebViewContainer$Delegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate;->onCloseRequested(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4386
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4387
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputonCloseListener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/Runnable;)V

    .line 4390
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    .line 4306
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateWindow isDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isUserGesture="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " resultMsg="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4307
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 4308
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 4309
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 4310
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-nez p1, :cond_1

    return p3

    .line 4312
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v1, :cond_2

    .line 4313
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment()Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p1

    .line 4315
    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    .line 4316
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer;->setOpener(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    const/4 v1, 0x0

    .line 4317
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ArticleViewer;->open(Ljava/lang/String;)Z

    .line 4319
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->getLastWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v1

    .line 4320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4321
    iput-object p2, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->urlFallback:Ljava/lang/String;

    .line 4323
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateWindow: newWebView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 4325
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 4326
    invoke-virtual {p1, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 4327
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return v0

    .line 4331
    :cond_4
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    return p3

    .line 4335
    :cond_5
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4336
    new-instance p1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$2;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4374
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 4375
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 4376
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .line 4476
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 4477
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v1, "onGeolocationPermissionsHidePrompt: dialog.dismiss"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4478
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 4479
    iput-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    return-void

    .line 4481
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v1, "onGeolocationPermissionsHidePrompt: no dialog"

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 10

    .line 4440
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 4445
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGeolocationPermissionsShowPrompt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4446
    iget-boolean v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetbotUser(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4447
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    .line 4452
    iget-boolean v2, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewRequestGeolocationPermission:I

    goto :goto_1

    :cond_2
    sget v2, Lorg/telegram/messenger/R$string;->WebViewRequestGeolocationPermission:I

    :goto_1
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v1

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4453
    iget-boolean v8, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v8, :cond_3

    sget v8, Lorg/telegram/messenger/R$string;->BotWebViewRequestGeolocationPermissionWithHint:I

    goto :goto_2

    :cond_3
    sget v8, Lorg/telegram/messenger/R$string;->WebViewRequestGeolocationPermissionWithHint:I

    :goto_2
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda13;

    invoke-direct {v9, p0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    move-object v7, v2

    .line 4447
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4471
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4441
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v2, "onGeolocationPermissionsShowPrompt: no container"

    invoke-virtual {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4442
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    const/4 p1, 0x1

    .line 4145
    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 4146
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4147
    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$botId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->WebsiteSays:I

    new-array v4, p1, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    .line 4148
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    .line 4149
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda8;-><init>([ZLandroid/webkit/JsResult;)V

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda9;

    invoke-direct {p3, v0, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda9;-><init>([ZLandroid/webkit/JsResult;)V

    .line 4155
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    .line 4160
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    const/4 p1, 0x1

    .line 4166
    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 4167
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4168
    iget-boolean v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$botId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->WebsiteSays:I

    new-array v4, p1, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    .line 4169
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 4170
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda5;-><init>([ZLandroid/webkit/JsResult;)V

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    .line 4176
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda6;-><init>([ZLandroid/webkit/JsResult;)V

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda7;

    invoke-direct {p3, v0, p4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda7;-><init>([ZLandroid/webkit/JsResult;)V

    .line 4182
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p2

    .line 4188
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 14

    move-object/from16 v3, p5

    .line 4194
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    :goto_0
    const/4 v6, 0x1

    .line 4195
    new-array v2, v6, [Z

    const/4 v4, 0x0

    aput-boolean v4, v2, v4

    .line 4196
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    invoke-direct {v5, v7, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4197
    iget-boolean v7, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v7, :cond_1

    iget-wide v7, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$botId:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getName(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    sget v7, Lorg/telegram/messenger/R$string;->WebsiteSays:I

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    move-object/from16 v7, p3

    .line 4198
    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    .line 4200
    new-instance v7, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v8, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    invoke-direct {v7, v8, v0}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 4201
    iput-boolean v6, v7, Lorg/telegram/ui/Components/EditTextBoldCursor;->lineYFix:Z

    const/high16 v8, 0x41900000    # 18.0f

    .line 4202
    invoke-virtual {v7, v6, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 4203
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 4204
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-static {v8, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 4205
    invoke-virtual {v7, v6}, Landroid/view/View;->setFocusable(Z)V

    const v8, 0x24001

    .line 4206
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 4207
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v8, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v9, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v10, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v7, v8, v9, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    const/4 v0, 0x6

    .line 4208
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 4209
    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 4210
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v7, v4, v1, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p4

    .line 4211
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4213
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4214
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v11, 0x0

    .line 4215
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4217
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeCustomMaxHeight()Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4218
    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v0, 0x43920000    # 292.0f

    .line 4219
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4221
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda0;-><init>([ZLandroid/webkit/JsPromptResult;)V

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4227
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2, v3, v7}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda1;-><init>([ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4233
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda2;-><init>([ZLandroid/webkit/JsPromptResult;)V

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4239
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->overrideDismissListener(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 4243
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    .line 4244
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$1;

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;[ZLandroid/webkit/JsPromptResult;Lorg/telegram/ui/Components/EditTextCaption;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 4258
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v6
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4488
    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 4489
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    const/4 v2, 0x0

    .line 4490
    iput-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4492
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4493
    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v3, "onPermissionRequest: no container"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4494
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void

    .line 4497
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPermissionRequest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4499
    iget-boolean v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetbotUser(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4500
    :goto_0
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    .line 4501
    array-length v4, v3

    const-string v5, "android.webkit.resource.VIDEO_CAPTURE"

    const-string v6, "android.webkit.resource.AUDIO_CAPTURE"

    const-string v7, "android.permission.CAMERA"

    const-string v8, "android.permission.RECORD_AUDIO"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v4, v10, :cond_b

    .line 4502
    aget-object v4, v3, v9

    .line 4504
    iget-object v11, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v11}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_3

    .line 4505
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    return-void

    .line 4509
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v11}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$misVerifyingAge(Lorg/telegram/ui/web/BotWebViewContainer;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4510
    invoke-virtual {v1, v3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void

    .line 4514
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_7

    .line 4516
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v11

    iget-object v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$raw;->permission_request_microphone:I

    .line 4521
    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestMicrophonePermission:I

    goto :goto_1

    :cond_6
    sget v3, Lorg/telegram/messenger/R$string;->WebViewRequestMicrophonePermission:I

    :goto_1
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 4522
    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestMicrophonePermissionWithHint:I

    goto :goto_2

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->WebViewRequestMicrophonePermissionWithHint:I

    :goto_2
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    move-object/from16 v17, v2

    .line 4516
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4542
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4546
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v11

    iget-object v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    .line 4551
    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_9

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraPermission:I

    goto :goto_3

    :cond_9
    sget v3, Lorg/telegram/messenger/R$string;->WebViewRequestCameraPermission:I

    :goto_3
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 4552
    iget-boolean v3, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v3, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraPermissionWithHint:I

    goto :goto_4

    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->WebViewRequestCameraPermissionWithHint:I

    :goto_4
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;Ljava/lang/String;)V

    move-object/from16 v17, v2

    .line 4546
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4572
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 4576
    :cond_b
    array-length v4, v3

    const/4 v11, 0x2

    if-ne v4, v11, :cond_10

    aget-object v4, v3, v9

    .line 4578
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    aget-object v4, v3, v9

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_c
    aget-object v4, v3, v10

    .line 4579
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    aget-object v4, v3, v10

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4581
    :cond_d
    iget-object v4, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v11

    iget-object v4, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v13

    sget v14, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    .line 4586
    iget-boolean v4, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v4, :cond_e

    sget v4, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraMicPermission:I

    goto :goto_5

    :cond_e
    sget v4, Lorg/telegram/messenger/R$string;->WebViewRequestCameraMicPermission:I

    :goto_5
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 4587
    iget-boolean v4, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->val$bot:Z

    if-eqz v4, :cond_f

    sget v4, Lorg/telegram/messenger/R$string;->BotWebViewRequestCameraMicPermissionWithHint:I

    goto :goto_6

    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->WebViewRequestCameraMicPermissionWithHint:I

    :goto_6
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V

    move-object/from16 v17, v2

    .line 4581
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createWebViewPermissionsRequestDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/core/util/Consumer;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    .line 4607
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_10
    :goto_7
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 4614
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 4615
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "onPermissionRequestCanceled: dialog.dismiss"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4616
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 4617
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->lastPermissionsDialog:Landroid/app/Dialog;

    return-void

    .line 4619
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string v0, "onPermissionRequestCanceled: no dialog"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 4430
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    const-string v0, "onProgressChanged "

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetwebViewProgressListener(Lorg/telegram/ui/web/BotWebViewContainer;)Landroidx/core/util/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4431
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4432
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetwebViewProgressListener(Lorg/telegram/ui/web/BotWebViewContainer;)Landroidx/core/util/Consumer;

    move-result-object p1

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 4434
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%: no container"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 4268
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedIcon favicon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 4269
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetlastFaviconUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v0, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-object v1, v1, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 4270
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iput-object p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFavicon:Landroid/graphics/Bitmap;

    .line 4271
    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fputlastFaviconUrl(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;Ljava/lang/String;)V

    .line 4272
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastFaviconGot:Z

    .line 4273
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$msaveHistory(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)V

    .line 4275
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetlastFavicons(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 4276
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4277
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetlastFavicons(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4279
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4280
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onFaviconChanged(Landroid/graphics/Bitmap;)V

    .line 4282
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 4287
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4288
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    iget-boolean v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->errorShown:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4289
    iput-boolean v1, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitleGot:Z

    .line 4290
    iput-object p2, v0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->lastTitle:Ljava/lang/String;

    .line 4292
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4293
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->onTitleChanged(Ljava/lang/String;)V

    .line 4295
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 3

    .line 4300
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTouchIconUrl url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " precomposed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    .line 4301
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3

    .line 4395
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4397
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onShowFileChooser: no activity, false"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return v0

    .line 4400
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4401
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onShowFileChooser: no container, false"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return v0

    .line 4405
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetmFilePathCallback(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4406
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetmFilePathCallback(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/webkit/ValueCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 4409
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->-$$Nest$fgetbotWebViewContainer(Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;)Lorg/telegram/ui/web/BotWebViewContainer;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fputmFilePathCallback(Lorg/telegram/ui/web/BotWebViewContainer;Landroid/webkit/ValueCallback;)V

    .line 4411
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    move v0, v1

    .line 4412
    :cond_3
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz v0, :cond_4

    .line 4414
    const-string p3, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const/16 p3, 0xbb8

    .line 4416
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4424
    iget-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView$3;->this$0:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    const-string p2, "onShowFileChooser: true"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->d(Ljava/lang/String;)V

    return v1
.end method
