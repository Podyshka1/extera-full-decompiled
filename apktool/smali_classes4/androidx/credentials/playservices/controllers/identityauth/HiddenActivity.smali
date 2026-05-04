.class public Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity$Companion;


# instance fields
.field private mWaitingForActivityResult:Z

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->Companion:Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final handleCredentialFlow(Ljava/lang/String;)V
    .locals 12

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FLOW_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ACTIVITY_REQUEST_CODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iput-boolean v3, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->mWaitingForActivityResult:Z

    .line 97
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 96
    :try_start_1
    invoke-virtual/range {v4 .. v11}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, p0

    .line 106
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupIntentSenderFailureByType(Ljava/lang/String;Landroid/content/IntentSender$SendIntentException;)V

    return-void

    :cond_0
    move-object v4, p0

    .line 109
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupPendingIntentFailureByType(Ljava/lang/String;)V

    return-void
.end method

.method private final restoreState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->mWaitingForActivityResult:Z

    :cond_0
    return-void
.end method

.method private final setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->reportError$credentials_play_services_auth_release(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final setupIntentSenderFailureByType(Ljava/lang/String;Landroid/content/IntentSender$SendIntentException;)V
    .locals 3

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "CREATE_UNKNOWN"

    const-string v2, "GET_UNKNOWN"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "SIGN_IN_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "During get sign-in intent, one tap ui intent sender failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-direct {p0, p1, v2, p2}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :sswitch_1
    const-string v0, "CREATE_PASSWORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "During save password, found UI intent sender failure: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-direct {p0, p1, v1, p2}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :sswitch_2
    const-string v0, "CREATE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "During public key credential, found IntentSender failure on public key creation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-direct {p0, p1, v1, p2}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :sswitch_3
    const-string v0, "BEGIN_SIGN_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    .line 117
    :cond_3
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "During begin sign in, one tap ui intent sender failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-direct {p0, p1, v2, p2}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a4a0ecf -> :sswitch_3
        0xed33ea -> :sswitch_2
        0x4a4e227e -> :sswitch_1
        0x760d02f4 -> :sswitch_0
    .end sparse-switch
.end method

.method private final setupPendingIntentFailureByType(Ljava/lang/String;)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "CREATE_UNKNOWN"

    const-string v2, "GET_UNKNOWN"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SIGN_IN_INTENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    const-string v0, "internal error during the sign-in intent operation"

    .line 171
    invoke-direct {p0, p1, v2, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :sswitch_1
    const-string v0, "CREATE_PASSWORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    const-string v0, "internal error during password creation"

    .line 157
    invoke-direct {p0, p1, v1, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :sswitch_2
    const-string v0, "CREATE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    const-string v0, "internal error during public key credential creation"

    .line 164
    invoke-direct {p0, p1, v1, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :sswitch_3
    const-string v0, "BEGIN_SIGN_IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    .line 151
    :cond_3
    iget-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    const-string v0, "internal error during the begin sign in operation"

    .line 150
    invoke-direct {p0, p1, v2, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->setupFailure(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1a4a0ecf -> :sswitch_3
        0xed33ea -> :sswitch_2
        0x4a4e227e -> :sswitch_1
        0x760d02f4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->reportResult$credentials_play_services_auth_release(Landroid/os/ResultReceiver;IILandroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->mWaitingForActivityResult:Z

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RESULT_RECEIVER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 44
    iput-object v1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->restoreState(Landroid/os/Bundle;)V

    .line 52
    iget-boolean p1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->mWaitingForActivityResult:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 58
    const-string p1, "HiddenActivity"

    const-string v0, "Activity handed an unsupported type"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 63
    :cond_2
    invoke-direct {p0, v0}, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->handleCredentialFlow(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    iget-boolean v1, p0, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
