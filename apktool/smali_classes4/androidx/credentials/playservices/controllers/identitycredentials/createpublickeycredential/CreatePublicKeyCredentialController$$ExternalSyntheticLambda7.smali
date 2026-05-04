.class public final synthetic Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Landroid/os/CancellationSignal;

.field public final synthetic f$1:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:Landroidx/credentials/CredentialManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$0:Landroid/os/CancellationSignal;

    iput-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$1:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    iput-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$3:Landroidx/credentials/CredentialManagerCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 0
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$0:Landroid/os/CancellationSignal;

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$1:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    iget-object v2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;->f$3:Landroidx/credentials/CredentialManagerCallback;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->$r8$lambda$5eAfHzadQGveufyO3aKVWVJxnYA(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method
