.class public final synthetic Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/credentials/CredentialManagerCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Exception;

    iput-object p2, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$2:Landroidx/credentials/CredentialManagerCallback;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Exception;

    iget-object v1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;->f$2:Landroidx/credentials/CredentialManagerCallback;

    invoke-static {v0, v1, v2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$ZTOmcSIYlhRw0U7DeRTc4rOhVj0(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
