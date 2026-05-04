.class public final Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 1

    .line 148
    const-string v0, "CREATE_CANCELED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/CreateCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 151
    :cond_0
    const-string v0, "CREATE_INTERRUPTED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 155
    :cond_1
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I
    .locals 1

    .line 48
    invoke-static {}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->access$getCONTROLLER_REQUEST_CODE$cp()I

    move-result v0

    return v0
.end method

.method public final getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 2

    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5d754ec3

    if-eq v0, v1, :cond_4

    const v1, -0x936ed67

    if-eq v0, v1, :cond_2

    const v1, 0x77034d87

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GET_NO_CREDENTIALS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance p1, Landroidx/credentials/exceptions/NoCredentialException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/NoCredentialException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 111
    :cond_2
    const-string v0, "GET_INTERRUPTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialInterruptedException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/GetCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 111
    :cond_4
    const-string v0, "GET_CANCELED_TAG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/GetCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 122
    :cond_5
    :goto_0
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final getRetryables()Ljava/util/Set;
    .locals 1

    .line 41
    invoke-static {}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->access$getRetryables$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final reportError$credentials_play_services_auth_release(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "FAILURE_RESPONSE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v1, "EXCEPTION_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string p2, "EXCEPTION_MESSAGE"

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7fffffff

    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final reportResult$credentials_play_services_auth_release(Landroid/os/ResultReceiver;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v1, "FAILURE_RESPONSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v1, "ACTIVITY_REQUEST_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string p2, "RESULT_DATA"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    invoke-virtual {p1, p3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
