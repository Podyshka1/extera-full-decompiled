.class public final synthetic Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroidx/credentials/CredentialManagerCallback;

.field public final synthetic f$2:Landroidx/credentials/GetCredentialResponse;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$1:Landroidx/credentials/CredentialManagerCallback;

    iput-object p3, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$2:Landroidx/credentials/GetCredentialResponse;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$1:Landroidx/credentials/CredentialManagerCallback;

    iget-object v2, p0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;->f$2:Landroidx/credentials/GetCredentialResponse;

    invoke-static {v0, v1, v2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$YP4ZQ9JLCp3HyecrcwWw0iX1oz8(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
