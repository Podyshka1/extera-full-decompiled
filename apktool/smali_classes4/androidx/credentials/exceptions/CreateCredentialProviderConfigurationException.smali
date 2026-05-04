.class public final Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;
.super Landroidx/credentials/exceptions/CreateCredentialException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;->Companion:Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 30
    const-string v0, "androidx.credentials.TYPE_CREATE_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION"

    .line 29
    invoke-direct {p0, v0, p1}, Landroidx/credentials/exceptions/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
