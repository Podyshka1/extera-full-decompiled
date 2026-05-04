.class public final synthetic Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/credentials/CredentialManagerCallback;

.field public final synthetic f$1:Landroidx/credentials/exceptions/CreateCredentialException;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;->f$0:Landroidx/credentials/CredentialManagerCallback;

    iput-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;->f$1:Landroidx/credentials/exceptions/CreateCredentialException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;->f$0:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;->f$1:Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$UsDz_Mw_Yskl8U5QoYxghXxpPQg(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method
